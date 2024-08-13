// ignore_for_file: camel_case_types, file_names, deprecated_member_use, unused_field
// ignore: unused_import, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
// ignore: unused_import


import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/Card.dart';
import 'package:tikts_app_nadroid/Confirmation_page.dart';

class Payment_page extends StatefulWidget {
  const Payment_page({super.key});

  @override
  State<Payment_page> createState() => _Payment_pageState();
}

//Master Card pass card and name buttons names and amount
class _Payment_pageState extends State<Payment_page> {
  // ignore: duplicate_ignore
  // ignore: unused_field
  //Card control code commands
  final TextEditingController _controller = TextEditingController();
  // ignore: duplicate_ignore
  // ignore: unused_field
  String _cardNumber = '44233122024';
  final TextEditingController _controllerr = TextEditingController();
  String _cardHolderName = 'NAME';
  final TextEditingController _controllers = TextEditingController();
  String _cvv = '';

//Card control code commands
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.0,
          title: const Text(
            "Payment",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Vazir-Bold',
                fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            onPressed: () {
              Get.back(result: const Out_check_page());
            },
            //Technical Specifications
            icon: const Icon(
              CupertinoIcons.arrow_left_circle,
              size: 40.0,
            ),
          ),
        ),
        //Codes kart Masster kart
        body: Column(
          children: [
            Center(
              child: Cr`editCardUi(
                currencySymbol: '\$',
                showValidThru: true,
                cardProviderLogo: Image.asset(
                  'assets/images/master.png',
                  fit: BoxFit.cover,
                ),
                creditCardType: CreditCardType.visa,
                bottomRightColor: const Color(0xFF000000),
                width: 300,
                //   currencySymbol: '300',
                backgroundDecorationImage: const DecorationImage(
                  filterQuality: FilterQuality.low,
                  //fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Vector.png',
                  ),
                ),
                showValidFrom: true,
                cardHolderFullName: _cardHolderName,
                cvvNumber: _cvv,
                cardNumber: _cardNumber,
//Codes kart Masster kart
                validThru: '01/28',
                scale: 4,
                validFrom: 'CARD HOLDER',
                disableHapticFeedBack: true,
                topLeftColor: const Color.fromARGB(255, 9, 49, 109),
                doesSupportNfc: true,
                placeNfcIconAtTheEnd: true,
                cardType: CardType.credit,
                cardProviderLogoPosition: CardProviderLogoPosition.left,
                showBalance: true,
                balance: 128.32434343,
                autoHideBalance: true,
                enableFlipping: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: TextField(
                controller: _controller,
                autofocus: true,
                cursorColor: Colors.black26,
                keyboardType: TextInputType.number,
                cursorHeight: 20,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(14),
                ],
                decoration: const InputDecoration(
                  labelText: 'Card number',
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontFamily: 'Vazir-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _cardNumber = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: TextField(
                controller: _controllerr,
                autofocus: true,
                cursorColor: Colors.black26,
                keyboardType: TextInputType.name,
                cursorHeight: 20,
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: const InputDecoration(
                  labelText: 'Card name',
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontFamily: 'Vazir-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _cardHolderName = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _controllers,
                      autofocus: true,
                      cursorColor: Colors.black26,
                      keyboardType: TextInputType.number,
                      cursorHeight: 20,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'CVV',
                        labelStyle: TextStyle(
                          color: Colors.black26,
                          fontFamily: 'Vazir-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _cvv = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: () {
                Get.to(const Confirmation());
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(233, 55),
                elevation: 0,
                backgroundColor: Colors.amber,
                side: const BorderSide(color: Colors.amber, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Vazir-Bold',
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class CreditCardUi {
}
//Master Card pass card and name buttons names and amount