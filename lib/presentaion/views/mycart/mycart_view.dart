import 'package:flutter/material.dart';
import 'package:project_app/app_provider.dart';
import 'package:provider/provider.dart';
import '../../resources/color_manager.dart';
import '../../widgets/custom_container_card.dart';
import '../../widgets/custom_select_payment.dart';
import '../../widgets/elevated_button_custom.dart';
import '../../widgets/custom_cart_page.dart';
import '../../widgets/custom_divider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  String selectedPaymentMethod = 'Cash';
  bool isPaymentComplete = false;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: ListView(
            children: [
              const Text(
                "card payment",
                style: TextStyle(fontSize: 50),
              ),
              Image.asset('assets/card.jpg'),
              const SizedBox(
                height: 50,
              ),
              const CustomContainerCard(
                hintText: "holder",
              ),
              const SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 76,
                      width: 157,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: ColorManager.borderColor,
                        ),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: "CVV",
                          hintStyle: TextStyle(
                              fontSize: 30, color: ColorManager.textColor2),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      height: 76,
                      width: 157,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: ColorManager.borderColor,
                        ),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: "Expire",
                          hintStyle: TextStyle(
                              fontSize: 30, color: ColorManager.textColor2),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomContainerCard(
                hintText: "Card Number",
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomDividerWithPadding(),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: CustomElevatedButton(
                  onPressed: () {},
                  width: 100,
                  text: "Check",
                  color: ColorManager.primaryMainColor,
                  colortext: ColorManager.textColor,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var cartList = Provider.of<AppProvider>(context).cartList;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: cartList.isEmpty
            ? const Center(
                child: Text(
                  "No Item Found",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemCount: cartList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomMycart(
                        onPressed: () {
                          Provider.of<AppProvider>(context, listen: false)
                              .removeFromCart(cartList[index]);
                        },
                        model: cartList[index],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total cost: ",
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        " \$ ${Provider.of<AppProvider>(context).calculateTotalCost(cartList).toStringAsFixed(2)}",
                        style: const TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 1.0,
                    thickness: 4,
                  ),
                  const Text(
                    " Adress",
                    style: TextStyle(fontSize: 50),
                  ),
                  const Text(
                    "Enter Recipint's name",
                    style: TextStyle(fontSize: 37, color: ColorManager.grey2),
                  ),
                  const CustomDividerWithPadding(),
                  const Text(
                    "Enter Nearest land mark",
                    style: TextStyle(fontSize: 37, color: ColorManager.grey2),
                  ),
                  const CustomDividerWithPadding(),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Enter Nearest",
                          style: TextStyle(
                              fontSize: 37, color: ColorManager.grey2),
                        ),
                      ),
                      SizedBox(
                        width: 39,
                      ),
                      Expanded(
                        child: Text(
                          "land mark",
                          style: TextStyle(
                              fontSize: 37, color: ColorManager.grey2),
                        ),
                      ),
                    ],
                  ),
                  const CustomDividerWithPadding(),
                  const Text(
                    "Enter Phone",
                    style: TextStyle(fontSize: 37, color: ColorManager.grey2),
                  ),
                  const CustomDividerWithPadding(),
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    "Select Payment Method",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50),
                  ),
                  const CustomSelectPayment(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 104),
                    child: CustomElevatedButton(
                      onPressed: () {
                        _showBottomSheet(context);
                      },
                      width: 300,
                      text: "Check Out",
                      color: ColorManager.primaryMainColor,
                      colortext: ColorManager.textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 66,
                  ),
                ],
              ),
      ),
    );
  }
}
