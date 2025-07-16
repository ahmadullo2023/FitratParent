import 'package:fitrat_parent2/presentation/market/tabs/tab_orders.dart';
import 'package:fitrat_parent2/presentation/market/tabs/tab_products.dart';
import 'package:fitrat_parent2/presentation/market/widgets/custom_tab_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  int selectedTab = 0;
  bool hasOpenedOrders = false;
  // final bloc = DetailBloc();

  // String name = "";
  // String axiom = "";
  // int price = 0;

  // @override
  // void initState() {
  //   bloc.add(GetDetail(widget.productId));
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   bloc.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Do'kon"),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTabSwitcher(
            selectedIndex: selectedTab,
            tabs: const ["Maxsulotlar", "Buyurtmalar"],
            onChanged: (index) {
              setState(() {
                selectedTab = index;
                if (index == 1) hasOpenedOrders = true;
              });
            },
          ),
          Expanded(
            child: IndexedStack(
              index: selectedTab,
              children: [
                const ProductTabView(),
                if (hasOpenedOrders)
                  const OrderTabView()
                else
                  const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




