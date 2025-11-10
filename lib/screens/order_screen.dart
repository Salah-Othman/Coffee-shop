import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String selectedOrder = "Deliver";
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Order',
          style: TextStyle(
            color: Color.fromRGBO(47, 45, 44, 1),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Container(
                  width: 321,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 240, 240, 1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOrder = "Deliver";
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 154,
                          height: 40,
                          decoration: BoxDecoration(
                            color: selectedOrder == "Deliver"
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(240, 240, 240, 1),

                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Deliver',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: selectedOrder == "Deliver"
                                  ? Color.fromRGBO(255, 255, 255, 1)
                                  : Color.fromRGBO(47, 45, 44, 1),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOrder = "Pick Up";
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 154,
                          height: 40,
                          decoration: BoxDecoration(
                            color: selectedOrder == "Pick Up"
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(240, 240, 240, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Pick Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: selectedOrder == "Pick Up"
                                  ? Color.fromRGBO(255, 255, 255, 1)
                                  : Color.fromRGBO(47, 45, 44, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: sizeHeight * 0.035),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Address',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromRGBO(47, 45, 44, 1),
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.015),
                    Text(
                      'Jl. Kpg Sutoyo',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(48, 51, 54, 1),
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.015),
                    Text(
                      'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(128, 128, 128, 1),
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.012),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          width: 120,
                          height: 27,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.edit_document, size: 16),
                              SizedBox(width: 4),
                              Text(
                                'Edit Address',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: 120,
                          height: 27,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.edit_note, size: 16),
                              SizedBox(width: 4),
                              Text(
                                'Add Note',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(48, 51, 54, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: sizeHeight * 0.015),
                  ],
                ),
                Divider(),
                SizedBox(height: sizeHeight * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/coffe1.png',
                      width: 54,
                      height: 54,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cappucino',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'with Chocolate',
                          style: TextStyle(
                            color: Color.fromRGBO(155, 155, 155, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle_outline_sharp),
                        ),
                        Text('1'),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle_outline_sharp),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: sizeHeight * 0.02),
                Divider(),
                SizedBox(height: sizeHeight * 0.015),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: 317,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(234, 234, 234, 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/discount.png'),
                      SizedBox(width: sizeWidth * 0.04),
                      Text(
                        '1 Discount is applied',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(47, 45, 44, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: sizeHeight * 0.03),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 45, 44, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$ 4.53',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: sizeHeight * 0.016),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$ 1.0',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: sizeHeight * 0.018),
                    Divider(),
                    SizedBox(height: sizeHeight * 0.016),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$ 5.53',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            height: sizeHeight * 0.15,
            decoration: BoxDecoration(
              color: Color.fromRGBO(249, 249, 249, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(
                width: 1,
                color: Color.fromRGBO(241, 241, 241, 1),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/moneys.png'),
                    Container(
                      width: 112,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 51,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 124, 78, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Cash',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 51,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 240, 240, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$ 5.53',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(47, 45, 44, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz),
                  ],
                ),
                SizedBox(height: sizeHeight * 0.02),
                Container(
                  alignment: Alignment.center,
                  width: 315,
                  height: sizeHeight * 0.063,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 124, 78, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Order',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
