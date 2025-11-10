import 'package:coffeshop/screens/order_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String selectedSize = "M";
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
          'Detail',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(47, 45, 44, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: sizeHeight * 0.02),
                  Image.asset('assets/images/detail1.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: sizeHeight * 0.02),
                          Text(
                            'Cappucino',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(47, 45, 44, 1),
                            ),
                          ),
                          Text(
                            'with Chocolate',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(155, 155, 155, 1),
                            ),
                          ),
                          SizedBox(height: sizeHeight * 0.02),
                          Image.asset('assets/images/raten.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/frame1.png'),
                          SizedBox(width: sizeWidth * 0.03),
                          Image.asset('assets/images/frame2.png'),
                        ],
                      ),
                    ],
                  ),
                  //====== Description =======
                  SizedBox(height: sizeHeight * 0.06),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(47, 45, 44, 1),
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.02),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '''A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..''',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(152, 152, 152, 1),
                          ),
                        ),
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(198, 124, 78, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.03),
                  //====== Size =======
                  Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(47, 45, 44, 1),
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.02),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = 'S';
                          });
                        },
                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            color: selectedSize == 'S'
                                ? Color.fromRGBO(255, 245, 238, 1)
                                : Color.fromRGBO(249, 249, 249, 1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: selectedSize == 'S'
                                  ? Color.fromRGBO(198, 124, 78, 1)
                                  : Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'S',
                              style: TextStyle(
                                color: selectedSize == 'S'
                                    ? Color.fromRGBO(198, 124, 78, 1)
                                    : Color.fromRGBO(47, 45, 44, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = 'M';
                          });
                        },
                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            color: selectedSize == 'M'
                                ? Color.fromRGBO(255, 245, 238, 1)
                                : Color.fromRGBO(249, 249, 249, 1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: selectedSize == 'M'
                                  ? Color.fromRGBO(198, 124, 78, 1)
                                  : Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'M',
                              style: TextStyle(
                                color: selectedSize == 'M'
                                    ? Color.fromRGBO(198, 124, 78, 1)
                                    : Color.fromRGBO(47, 45, 44, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = 'L';
                          });
                        },
                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            color: selectedSize == 'L'
                                ? Color.fromRGBO(255, 245, 238, 1)
                                : Color.fromRGBO(249, 249, 249, 1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: selectedSize == 'L'
                                  ? Color.fromRGBO(198, 124, 78, 1)
                                  : Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'L',
                              style: TextStyle(
                                color: selectedSize == 'L'
                                    ? Color.fromRGBO(198, 124, 78, 1)
                                    : Color.fromRGBO(47, 45, 44, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //====== Bottom =======
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
              width: double.infinity,
              height: sizeHeight * 0.15,
              decoration: BoxDecoration(
                color: Color.fromRGBO(249, 249, 249, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border(
                  top: BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Color.fromRGBO(241, 241, 241, 1),
                  ),
                  left: BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Color.fromRGBO(241, 241, 241, 1),
                  ),
                  right: BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Color.fromRGBO(241, 241, 241, 1),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Color.fromRGBO(155, 155, 155, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '\$ 4.53',
                        style: TextStyle(
                          color: Color.fromRGBO(198, 124, 78, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return OrderScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 217,
                          height: sizeHeight * 0.07,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(198, 124, 78, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
