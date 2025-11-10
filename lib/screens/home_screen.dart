import 'package:coffeshop/model/product_model.dart';
import 'package:coffeshop/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCatogry = "Cappuccino";
  List<ProductModel> product = [
    ProductModel(
      id: 0,
      image: 'assets/images/coffe1.png',
      title: 'Cappucino',
      subtitle: 'with Chocolate',
      rate: 4.8,
      price: 4.53,
    ),
    ProductModel(
      id: 1,
      image: 'assets/images/coffe2.png',
      title: 'Cappucino',
      subtitle: 'with Chocolate',
      rate: 4.8,
      price: 4.53,
    ),
    ProductModel(
      id: 2,
      image: 'assets/images/coffe3.png',
      title: 'Cappucino',
      subtitle: 'with Chocolate',
      rate: 4.8,
      price: 4.53,
    ),
    ProductModel(
      id: 3,
      image: 'assets/images/coffe4.png',
      title: 'Cappucino',
      subtitle: 'with Chocolate',
      rate: 4.8,
      price: 4.53,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      body: Stack(
        children: [
          Container(
            height: 270,
            decoration: BoxDecoration(color: Color.fromRGBO(43, 43, 43, 1)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Elminya, Egypt',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(221, 221, 221, 1),
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 16,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/images/profile.png'),
                  ],
                ),
                SizedBox(height: sizeHeight * 0.03),
                TextField(
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: Image.asset('assets/images/option.png'),
                    filled: true,
                    fillColor: Color.fromRGBO(49, 49, 49, 1),
                    hintText: 'Search coffee',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(152, 152, 152, 1),
                    ),
                  ),
                ),
                SizedBox(height: sizeHeight * 0.03),
                Image.asset('assets/images/bannar.png'),
                SizedBox(height: sizeHeight * 0.03),
                SizedBox(
                  height: sizeHeight * 0.04,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCatogry = 'Cappuccino';
                          });
                        },
                        child: Container(
                          width: 121,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedCatogry == 'Cappuccino'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(243, 243, 243, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Cappuccino',
                              style: TextStyle(
                                color: selectedCatogry == 'Cappuccino'
                                    ? Color.fromRGBO(255, 255, 255, 1)
                                    : Color.fromRGBO(47, 75, 78, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCatogry = 'Machiato';
                          });
                        },
                        child: Container(
                          width: 121,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedCatogry == 'Machiato'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(243, 243, 243, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Machiato',
                              style: TextStyle(
                                color: selectedCatogry == 'Machiato'
                                    ? Color.fromRGBO(255, 255, 255, 1)
                                    : Color.fromRGBO(47, 75, 78, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCatogry = 'Latte';
                          });
                        },
                        child: Container(
                          width: 121,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedCatogry == 'Latte'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(243, 243, 243, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Latte',
                              style: TextStyle(
                                color: selectedCatogry == 'Latte'
                                    ? Color.fromRGBO(255, 255, 255, 1)
                                    : Color.fromRGBO(47, 75, 78, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCatogry = 'Americano';
                          });
                        },
                        child: Container(
                          width: 121,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedCatogry == 'Americano'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(243, 243, 243, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Americano',
                              style: TextStyle(
                                color: selectedCatogry == 'Americano'
                                    ? Color.fromRGBO(255, 255, 255, 1)
                                    : Color.fromRGBO(47, 75, 78, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 10,
                    childAspectRatio: 155 / 238,

                    children: [product[0], product[1], product[2], product[3]]
                        .map(
                          (e) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      e.image,
                                      width: 141,
                                      height: 132,
                                    ),
                                    Positioned(
                                      top: 6,
                                      left: 8,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            '\$ ${e.rate}',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                255,
                                                255,
                                                255,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  e.title,
                                  style: TextStyle(
                                    color: Color.fromRGBO(47, 45, 44, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  e.subtitle,
                                  style: TextStyle(
                                    color: Color.fromRGBO(155, 155, 155, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$ ${e.price}',
                                      style: TextStyle(
                                        color: Color.fromRGBO(47, 75, 78, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return DetailScreen();
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            198,
                                            124,
                                            78,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1,
                                          ),
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 8),
                    //   decoration: BoxDecoration(
                    //     color: Color.fromRGBO(255, 255, 255, 1),
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Stack(
                    //         children: [
                    //           Image.asset(
                    //             'assets/images/coffe2.png',
                    //             width: 141,
                    //             height: 132,
                    //           ),
                    //           Positioned(
                    //             top: 6,
                    //             left: 8,
                    //             child: Row(
                    //               children: [
                    //                 Icon(
                    //                   Icons.star,
                    //                   color: Colors.amber,
                    //                   size: 20,
                    //                 ),
                    //                 SizedBox(width: 8),
                    //                 Text(
                    //                   '4.8',
                    //                   style: TextStyle(
                    //                     fontSize: 13,
                    //                     fontWeight: FontWeight.w600,
                    //                     color: Color.fromRGBO(
                    //                       255,
                    //                       255,
                    //                       255,
                    //                       1,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(height: 6),
                    //       Text(
                    //         'Cappucino',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(47, 45, 44, 1),
                    //           fontWeight: FontWeight.w600,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //       SizedBox(height: 4),
                    //       Text(
                    //         'with Chocolate',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(155, 155, 155, 1),
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //       SizedBox(height: 15),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             '\$ 4.53',
                    //             style: TextStyle(
                    //               color: Color.fromRGBO(47, 75, 78, 1),
                    //               fontWeight: FontWeight.w600,
                    //               fontSize: 18,
                    //             ),
                    //           ),
                    //           Container(
                    //             width: 32,
                    //             height: 32,
                    //             decoration: BoxDecoration(
                    //               color: Color.fromRGBO(198, 124, 78, 1),
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //             child: Icon(
                    //               Icons.add,
                    //               color: Color.fromRGBO(255, 255, 255, 1),
                    //               size: 18,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 8),
                    //   decoration: BoxDecoration(
                    //     color: Color.fromRGBO(255, 255, 255, 1),
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Stack(
                    //         children: [
                    //           Image.asset(
                    //             'assets/images/coffe3.png',
                    //             width: 141,
                    //             height: 132,
                    //           ),
                    //           Positioned(
                    //             top: 6,
                    //             left: 8,
                    //             child: Row(
                    //               children: [
                    //                 Icon(
                    //                   Icons.star,
                    //                   color: Colors.amber,
                    //                   size: 20,
                    //                 ),
                    //                 SizedBox(width: 8),
                    //                 Text(
                    //                   '4.8',
                    //                   style: TextStyle(
                    //                     fontSize: 13,
                    //                     fontWeight: FontWeight.w600,
                    //                     color: Color.fromRGBO(
                    //                       255,
                    //                       255,
                    //                       255,
                    //                       1,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(height: 6),
                    //       Text(
                    //         'Cappucino',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(47, 45, 44, 1),
                    //           fontWeight: FontWeight.w600,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //       SizedBox(height: 4),
                    //       Text(
                    //         'with Chocolate',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(155, 155, 155, 1),
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //       SizedBox(height: 15),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             '\$ 4.53',
                    //             style: TextStyle(
                    //               color: Color.fromRGBO(47, 75, 78, 1),
                    //               fontWeight: FontWeight.w600,
                    //               fontSize: 18,
                    //             ),
                    //           ),
                    //           Container(
                    //             width: 32,
                    //             height: 32,
                    //             decoration: BoxDecoration(
                    //               color: Color.fromRGBO(198, 124, 78, 1),
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //             child: Icon(
                    //               Icons.add,
                    //               color: Color.fromRGBO(255, 255, 255, 1),
                    //               size: 18,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 8),
                    //   decoration: BoxDecoration(
                    //     color: Color.fromRGBO(255, 255, 255, 1),
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Stack(
                    //         children: [
                    //           Image.asset(
                    //             'assets/images/coffe4.png',
                    //             width: 141,
                    //             height: 132,
                    //           ),
                    //           Positioned(
                    //             top: 6,
                    //             left: 8,
                    //             child: Row(
                    //               children: [
                    //                 Icon(
                    //                   Icons.star,
                    //                   color: Colors.amber,
                    //                   size: 20,
                    //                 ),
                    //                 SizedBox(width: 8),
                    //                 Text(
                    //                   '4.8',
                    //                   style: TextStyle(
                    //                     fontSize: 13,
                    //                     fontWeight: FontWeight.w600,
                    //                     color: Color.fromRGBO(
                    //                       255,
                    //                       255,
                    //                       255,
                    //                       1,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(height: 6),
                    //       Text(
                    //         'Cappucino',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(47, 45, 44, 1),
                    //           fontWeight: FontWeight.w600,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //       SizedBox(height: 4),
                    //       Text(
                    //         'with Chocolate',
                    //         style: TextStyle(
                    //           color: Color.fromRGBO(155, 155, 155, 1),
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //       SizedBox(height: 15),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             '\$ 4.53',
                    //             style: TextStyle(
                    //               color: Color.fromRGBO(47, 75, 78, 1),
                    //               fontWeight: FontWeight.w600,
                    //               fontSize: 18,
                    //             ),
                    //           ),
                    //           Container(
                    //             width: 32,
                    //             height: 32,
                    //             decoration: BoxDecoration(
                    //               color: Color.fromRGBO(198, 124, 78, 1),
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //             child: Icon(
                    //               Icons.add,
                    //               color: Color.fromRGBO(255, 255, 255, 1),
                    //               size: 18,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(height: 20),
                    //     ],
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Spacer(),
          //     SizedBox(height: 20),
          //     Container(
          //       height: 94,
          //       decoration: BoxDecoration(
          //         color: Color.fromRGBO(249, 249, 249, 1),
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(20),
          //           topRight: Radius.circular(20),
          //         ),
          //         border: Border.all(
          //           color: Color.fromRGBO(241, 241, 241, 1),
          //           width: 1,
          //         ),
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           IconButton(
          //             onPressed: () {},
          //             icon: Image.asset('assets/images/home-icon.png'),
          //           ),
          //           IconButton(
          //             onPressed: () {},
          //             icon: Image.asset('assets/images/heart-icon.png'),
          //           ),
          //           IconButton(
          //             onPressed: () {},
          //             icon: Image.asset('assets/images/bag-icon.png'),
          //           ),
          //           IconButton(
          //             onPressed: () {},
          //             icon: Image.asset('assets/images/Notification-icon.png'),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 85,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(241, 241, 241, 1), width: 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color.fromRGBO(249, 249, 249, 1),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(198, 124, 78, 1),
          unselectedItemColor: Color.fromRGBO(141, 141, 141, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 30),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
