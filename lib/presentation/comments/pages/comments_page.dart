import 'dart:async';
import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:toastification/toastification.dart';
import '../../../utils/app_colors.dart';
import '../models/comment_model.dart';
import '../repositories/comment_repository.dart';

class CommentsPage extends HookConsumerWidget {
  const CommentsPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentController = useTextEditingController();
    final pagingController =
        useState<PagingController<int, CommentModel>?>(null);

    // // Auto-refresh timer
    // useEffect(() {
    //   Timer? refreshTimer;
    //
    //   // Start the timer when the widget is mounted
    //   refreshTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
    //     // Only refresh if pagingController is initialized
    //     if (pagingController.value != null) {
    //       pagingController.value!.refresh();
    //     }
    //   });
    //
    //   // Cleanup function - dispose timer when widget is unmounted
    //   return () {
    //     refreshTimer?.cancel();
    //   };
    // }, []);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Izohlar",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: SvgPicture.asset("assets/icons/message_empty.svg"),
            )

                // CustomPaginationWidget(
                //   emptyIcon: AppIcons.empty,
                //   onInit: (controller) {
                //     pagingController.value = controller;
                //   },
                //   upsideDown: true,
                //   spacing: 12,
                //   itemBuilder: (item) {
                //     return MessageItem(model: item);
                //   },
                //   getItems: (page) {
                //     ref.invalidate(commentsNotifierProvider(
                //       page: page,
                //       userId: id,
                //     ));
                //
                //     return ref.watch(commentsNotifierProvider(
                //       page: page,
                //       userId: id,
                //     ).future)
                //         .then((pagination) {
                //       final adjustedItems = pagination.results?.map((comment) {
                //             final createdAtDate = comment.createdAt != null
                //                 ? DateTime.parse(comment.createdAt!)
                //                     .add(const Duration(hours: 5))
                //                 : null;
                //             return comment.copyWith(
                //               createdAt: createdAtDate?.toIso8601String(),
                //             );
                //           }).toList() ??
                //           [];
                //
                //       return pagination.copyWith(results: adjustedItems);
                //     });
                //   },
                // ),
                ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  height: 48,
                  width: 48,
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.photo_outlined)),
                ),
                10.horizontal,
                Expanded(
                  child: CustomTextField1(
                    hintText: "Izohni shu yerga yozing...",
                    suffixIcon: "",
                    textEditingController: commentController,
                    suffixIconOnTap: () async {
                      if (commentController.text.isNotEmpty) {
                        commentRepository
                            .addComment(
                          comment: commentController.text,
                          student: id,
                          lid: id,
                        )
                            .then((_) {
                          pagingController.value?.refresh();
                        }).onError((e, s) {
                          CustomToast.show(context,
                              text: "Kutilmagan xatolik",
                              type: ToastificationType.error);
                        });
                        commentController.clear();
                      }
                    },
                  ),
                ),
              ],
            ),
            10.vertical,
          ],
        ).paddingSymmetric(horizontal: 16),
      ),
    );
  }
}

class CustomTextField1 extends StatefulWidget {
  const CustomTextField1({
    super.key,
    this.hintText,
    this.onChange,
    this.labelText,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.validatorText,
    this.obscure = false,
    this.isObscure = false,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.textEditingController,
    this.readOnly = false,
    this.onTap,
    this.formatter,
    this.textInputType,
    this.maxLength,
    this.focusNode,
    this.suffixIconOnTap,
    this.borderColor = Colors.grey,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.words,
    this.showRed = false,
    this.validator,
    this.suffixText,
    this.prefixText,
    this.isDebounce = true,
    this.isEnabled = true,
  });

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;

  final String? labelText;
  final String? hintText;
  final String? prefixIcon;
  final String? suffixIcon;
  final String? suffixText;
  final String? prefixText;
  final bool? obscure;
  final bool isObscure;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final Color borderColor;
  final String? initialValue;
  final String? validatorText;
  final int? maxLines;
  final TextInputType? textInputType;
  final int? minLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function()? suffixIconOnTap;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? formatter;
  final TextCapitalization textCapitalization;
  final bool showRed;
  final FormFieldValidator<String>? validator;
  final bool isDebounce;
  final bool isEnabled; // Added isEnabled field declaration

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}

class _CustomTextField1State extends State<CustomTextField1> {
  late TextEditingController innerController;
  late bool isTextObscured;
  Timer? _debounceTimer;
  @override
  void didUpdateWidget(covariant CustomTextField1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.initialValue != oldWidget.initialValue &&
          widget.textEditingController == null) {
        innerController.text = widget.initialValue ?? "";
      }
    });
  }

  @override
  void initState() {
    innerController = widget.textEditingController ??
        TextEditingController(
          text: widget.initialValue,
        );
    isTextObscured = widget.isObscure;
    super.initState();
  }

  void _debounceOnChanged(String value) {
    if (widget.isDebounce) {
      _debounceTimer?.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 300), () {
        widget.onChange?.call(value);
      });
    } else {
      widget.onChange?.call(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty) ...[
          Text(
            widget.labelText!,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          12.vertical,
        ],
        TextFormField(
          maxLines: widget.isObscure ? 1 : (widget.maxLines ?? 1),
          minLines: widget.minLines ?? 1,
          validator: widget.validator ??
              (_) {
                if (innerController.text.isEmpty == true &&
                    widget.validatorText != null) {
                  return widget.validatorText;
                }
                return null;
              },
          textCapitalization: widget.textCapitalization,
          readOnly: widget.readOnly,
          focusNode: widget.focusNode,
          inputFormatters: widget.formatter,
          onTap: widget.onTap,
          onFieldSubmitted: widget.onFieldSubmitted,
          enabled: widget.isEnabled,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w400,
              ),
          obscureText: isTextObscured,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          keyboardType: widget.textInputType,
          onChanged: _debounceOnChanged,
          controller: innerController,
          cursorColor: Colors.white54,
          maxLength: widget.maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            counterText: '',
            errorStyle: TextStyle(fontSize: 12),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.buttonTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
            labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
            suffixIcon: widget.isObscure
                ? IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isTextObscured = !isTextObscured;
                        },
                      );
                    },
                    icon: isTextObscured
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility))
                : widget.suffixIcon == null
                    ? Text(
                        widget.suffixText ?? "",
                        style: TextStyle(
                            color: AppColors.chartreuse100, fontSize: 14),
                      ).marginSymmetric(horizontal: 10, vertical: 10)
                    : IconButton(
                        onPressed: widget.suffixIconOnTap,
                        icon: Icon(Icons.send, color: Colors.green, size: 25)),
            filled: true,
            isDense: true,
            // Set background color based on isEnabled
            fillColor: !widget.isEnabled
                ? Colors.grey
                : (widget.fillColor ?? Colors.transparent),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: widget.showRed ? Colors.red : widget.borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: widget.showRed ? Colors.red : widget.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: widget.showRed ? Colors.red : widget.borderColor,
                width: 1.2,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.red),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: widget.borderColor),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomToast {
  static void show(
    BuildContext context, {
    required String text,
    ToastificationType type = ToastificationType.success,
  }) {
    Widget icon({required ToastificationType type}) {
      switch (type) {
        case ToastificationType.success:
          return Icon(
            Icons.check_box,
            color: Colors.green,
          );
        case ToastificationType.error:
          return Icon(
            Icons.error_outline,
            color: Colors.red,
          );
        case ToastificationType.info:
          return Icon(
            Icons.info,
            color: Colors.blue,
          );
        default:
          return Icon(
            Icons.info,
            color: Colors.blue,
          );
      }
    }

    toastification.show(
      context: context,
      type: type,
      autoCloseDuration: Duration(
        seconds: 4,
      ),
      icon: icon(type: type),
      title: Text(
        text,
      ),
    );
  }
}
