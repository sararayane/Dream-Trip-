import 'package:flutter/material.dart';

class MetodosDePagamentos extends StatefulWidget {
  const MetodosDePagamentos({Key? key}) : super(key: key);

  @override
  State<MetodosDePagamentos> createState() => _MetodosDePagamentosState();
}

class _MetodosDePagamentosState extends State<MetodosDePagamentos> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formas De Pagamentos"),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 1
                      ? Border.all(width: 1, color: Colors.black)
                      : Border.all(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.black,
                            )
                          ],
                        ),
                        Text(
                          "Amazon Pay",
                          style: _type == 1
                              ? const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0))
                              : const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                        ),
                        Image.asset(
                          "imagens/amazonpay.png",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 1
                      ? Border.all(width: 1, color: Colors.black)
                      : Border.all(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.black,
                            )
                          ],
                        ),
                        Text(
                          "Crédito",
                          style: _type == 1
                              ? const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0))
                              : const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                        ),
                        Image.asset(
                          "imagens/amastercard.png",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 1
                      ? Border.all(width: 1, color: Colors.black)
                      : Border.all(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.black,
                            )
                          ],
                        ),
                        Text(
                          "PayPal",
                          style: _type == 1
                              ? const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0))
                              : const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                        ),
                        Image.asset(
                          "imagens/PayPal.png",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 1
                      ? Border.all(width: 1, color: Colors.black)
                      : Border.all(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.black,
                            )
                          ],
                        ),
                        Text(
                          "Google Pay",
                          style: _type == 1
                              ? const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0))
                              : const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                        ),
                        Image.asset(
                          "imagens/gpay.png",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(
                    "\$ 60.50",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
