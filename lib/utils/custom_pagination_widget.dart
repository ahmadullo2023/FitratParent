import 'package:fitrat_parent2/utils/app_assets.dart';
import 'package:fitrat_parent2/utils/app_colors.dart';
import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/models/pagination_model.dart';
import 'package:fitrat_parent2/utils/widgets/custom_no_internet_widget.dart';
import 'package:fitrat_parent2/utils/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../generated/l10n.dart';

class CustomPaginationWidget<T> extends StatefulWidget {
  const CustomPaginationWidget({
    super.key,
    required this.itemBuilder,
    required this.getItems,
    this.padding,
    this.refreshers,
    this.isListView = true,
    this.aspectRatio = 1,
    this.spacing = 10,
    this.onInit,
    this.controller,
    this.shrinkWrap = false,
    this.emptyIcon,
    this.upsideDown = false,
    this.emptyBuilder, // ✅ NEW
  });


  final Widget Function(T model) itemBuilder;
  final Future<PaginationModel<T>> Function(int page) getItems;
  final EdgeInsets? padding;
  final List<ValueNotifier<dynamic>>? refreshers;
  final bool isListView;
  final double spacing;
  final double aspectRatio;
  final bool shrinkWrap;
  final String? emptyIcon;
  final bool upsideDown;
  final PagingController<int, T>? controller;
  final Function(PagingController<int, T> pagingController)? onInit;
  final Widget Function()? emptyBuilder;


  @override
  State<CustomPaginationWidget<T>> createState() =>
      _CustomPaginationWidgetState<T>();
}

class _CustomPaginationWidgetState<T>
    extends State<CustomPaginationWidget<T>>
    with AutomaticKeepAliveClientMixin {
  late final PagingController<int, T> _pagingController;
  bool _hasInitialized = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _pagingController = widget.controller ?? PagingController<int, T>(firstPageKey: 1);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_hasInitialized) {
        widget.onInit?.call(_pagingController);
        _hasInitialized = true;
      }
    });

    // Handle refreshers with debounce
    if (widget.refreshers != null) {
      for (var element in widget.refreshers!) {
        element.addListener(() {
          // Debounce multiple refreshes that may occur simultaneously
          Future.delayed(Duration(milliseconds: 300)).then((_) {
            if (mounted) {
              _pagingController.refresh();
            }
          });
        });
      }
    }

    // Set up page request listener
    _pagingController.addPageRequestListener(
          (pageKey) async {
        if (!mounted) return;

        try {
          final items = await widget.getItems(pageKey);
          if (!mounted) return;

          final hasMore = items.next != null;
          if (hasMore) {
            _pagingController.appendPage(items.results ?? [], pageKey + 1);
          } else {
            _pagingController.appendLastPage(items.results ?? []);
          }
        } catch (e) {
          if (mounted) {
            _pagingController.error = e;
          }
        }
      },
    );
  }

  @override
  void dispose() {
    // Don't dispose if controller was provided externally
    if (widget.controller == null) {
      _pagingController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final content = widget.isListView
        ? PagedListView<int, T>(
      reverse: widget.upsideDown,
      shrinkWrap: widget.shrinkWrap,
      padding: widget.padding,
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        firstPageErrorIndicatorBuilder: (context) => SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: CustomNoInternetWidget(
            isLoading: false,
            onTap: () {
              _pagingController.refresh();
            },
            error: _pagingController.error,
          ),
        ),
        itemBuilder: (context, item, index) =>
            widget.itemBuilder(item).paddingOnly(bottom: widget.spacing),
        firstPageProgressIndicatorBuilder: (context) =>
        const LoadingWidget(),
        newPageProgressIndicatorBuilder: (context) =>
             LoadingWidget().marginSymmetric(vertical: 10),
        noItemsFoundIndicatorBuilder: (_) =>
        widget.emptyBuilder?.call() ??
            Center(
              child: SvgPicture.asset(widget.emptyIcon ?? AppIcons.empty),
            ),
        newPageErrorIndicatorBuilder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).somethingWentWrong,
              textAlign: TextAlign.center,
            ),
            IconButton(
                onPressed: () {
                  _pagingController.retryLastFailedRequest();
                },
                icon: const Icon(
                  Icons.refresh,
                  color: AppColors.emerald500,
                ))
          ],
        ),
      ),
    )
        : PagedGridView<int, T>(
      reverse: widget.upsideDown,
      shrinkWrap: widget.shrinkWrap,
      padding: widget.padding,
      pagingController: _pagingController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.sizeOf(context).width > 600 ? 4 : 2,
        mainAxisSpacing: 10,
        childAspectRatio:
        MediaQuery.sizeOf(context).height > 1000 ? 0.7 : 0.7,
        crossAxisSpacing: 10,
      ),
      builderDelegate: PagedChildBuilderDelegate(
        newPageProgressIndicatorBuilder: (context) =>
            const LoadingWidget().marginSymmetric(vertical: 10),
        itemBuilder: (context, item, index) =>
            widget.itemBuilder(item).paddingOnly(bottom: widget.spacing),
        firstPageProgressIndicatorBuilder: (context) =>
        const LoadingWidget(),
        noItemsFoundIndicatorBuilder: (_) => Center(
          child: SvgPicture.asset(widget.emptyIcon ?? AppIcons.empty),
        ),
        newPageErrorIndicatorBuilder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).somethingWentWrong,
              textAlign: TextAlign.center,
            ),
            IconButton(
                onPressed: () {
                  _pagingController.retryLastFailedRequest();
                },
                icon: const Icon(
                  Icons.refresh,
                  color: AppColors.emerald500,
                ))
          ],
        ),
        firstPageErrorIndicatorBuilder: (context) => SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: CustomNoInternetWidget(
            isLoading: false,
            onTap: () {
              _pagingController.refresh();
            },
            error: _pagingController.error,
          ),
        ),
      ),
    );
    return RefreshIndicator(
      color: AppColors.emerald500,
      onRefresh: () async {
        _pagingController.refresh();
      },
      child: content,
    );
  }
}
