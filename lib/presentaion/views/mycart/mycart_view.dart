import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';
import '../../widgets/CustomContainerCard.dart';
import '../../widgets/CustomSelectPayment.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/custom_cart_page.dart';
import '../../widgets/custom_divider.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key});
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
              CustomContainerCard(
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
              CustomContainerCard(
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          const Text(
            "Cart",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 88),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomMycart(
            productName: 'Mirror',
            price: '80\$',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomMycart(
            productName: 'Mirror',
            price: '80\$',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomMycart(
            productName: 'Mirror',
            price: '80\$',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Total cost: ",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                "\$1080 ",
                style: TextStyle(fontSize: 50),
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
          Row(
            children: const [
              Expanded(
                child: Text(
                  "Enter Nearest",
                  style: TextStyle(fontSize: 37, color: ColorManager.grey2),
                ),
              ),
              SizedBox(
                width: 39,
              ),
              Expanded(
                child: Text(
                  "land mark",
                  style: TextStyle(fontSize: 37, color: ColorManager.grey2),
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
          CustomSelectPayment(),
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
    );
  }
}
