 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeautyDatial extends StatefulWidget {
  const BeautyDatial({super.key});

  @override
  State<BeautyDatial> createState() => _BeautyDatialState();
}

class _BeautyDatialState extends State<BeautyDatial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),  // Back arrow icon
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);  // Goes back to the previous screen
            },
          ),
        ],

        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo.shade500,
        title: Text(
          "Datiels Beauty Service",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 0),
                  child: Card(
                      child: Container(
                        height: 360,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://t4.ftcdn.net/jpg/10/11/22/67/240_F_1011226730_BgflqbNg70Cb0FfILaCBApdnuz2Avwyi.jpg",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            // Space between image and text
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Customized Haircuts:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 45),
                              child: Text(
                                "Haircut for men ",
                                style:
                                TextStyle(color: Colors.black38, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "for normal haircut, ",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.indigo.shade500,
                                    size: 19,
                                  ),
                                ),
                                Text(
                                  "15%",
                                  style: TextStyle(
                                      color: Colors.indigo.shade500, fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "₹90 start",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade500,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "for designing haircut, ",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.indigo.shade500,
                                  size: 19,
                                ),
                              ),
                              Text(
                                "20%",
                                style: TextStyle(
                                    color: Colors.indigo.shade500, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "₹150 start",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.indigo.shade500,
                                  size: 20,
                                ),
                              )
                            ]),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 0),
                  child: Card(
                    child: Container(
                        height: 360,
                        width: 170,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://as2.ftcdn.net/v2/jpg/10/31/90/57/1000_F_1031905720_9SBo2pHTiEsGaw0816yMNrs6iRIDccl1.jpg",
                                height: 150,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              // Space between image and text
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text(
                                  "Customized saving:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text(
                                  "saving for men ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text(
                                  "for normal saving, ",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.indigo.shade500,
                                      size: 19,
                                    ),
                                  ),
                                  Text(
                                    "10%",
                                    style: TextStyle(
                                        color: Colors.indigo.shade500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "₹50 start",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.indigo.shade500,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "for designing saving, ",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.indigo.shade500,
                                      size: 19,
                                    ),
                                  ),
                                  Text(
                                    "20%",
                                    style: TextStyle(
                                        color: Colors.indigo.shade500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "₹100 start",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.indigo.shade500,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ])),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Card(
                      child: Container(
                        height: 360,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://stock.adobe.com/images/traditional-indian-woman-saris-or-sarees-hung-in-display-of-a-retail-shop/1031903539",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            // Space between image and text
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Customized Haircuts:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                "Haircut forwomen ",
                                style:
                                TextStyle(color: Colors.black38, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "for normal haircut, ",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.indigo.shade500,
                                    size: 19,
                                  ),
                                ),
                                Text(
                                  "15%",
                                  style: TextStyle(
                                      color: Colors.indigo.shade500, fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "₹90 start",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.indigo.shade500,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "for designing haircut, ",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.indigo.shade500,
                                  size: 19,
                                ),
                              ),
                              Text(
                                "20%",
                                style: TextStyle(
                                    color: Colors.indigo.shade500, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "₹150 start",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.indigo.shade500,
                                  size: 20,
                                ),
                              )
                            ]),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 0),
                  child: Card(
                    child: Container(
                        height: 360,
                        width: 170,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://as1.ftcdn.net/v2/jpg/10/31/96/00/1000_F_1031960059_yUkhKArYJqDF9Epd0LQbt0u7NpouF8GH.jpg",
                                height: 150,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              // Space between image and text
                              Padding(
                                padding: const EdgeInsets.only(right: 35),
                                child: Text(
                                  "Customized bleach:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 35),
                                child: Text(
                                  "bleach for women ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text(
                                  "for normal bleach, ",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.indigo.shade500,
                                      size: 19,
                                    ),
                                  ),
                                  Text(
                                    "10%",
                                    style: TextStyle(
                                        color: Colors.indigo.shade500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "₹250 start",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.indigo.shade500,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(
                                  "for pack bleach, ",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.indigo.shade500,
                                      size: 19,
                                    ),
                                  ),
                                  Text(
                                    "20%",
                                    style: TextStyle(
                                        color: Colors.indigo.shade500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "₹500 start",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.indigo.shade500,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ])),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Card(
                      child: Container(
                        height: 360,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://as2.ftcdn.net/v2/jpg/10/31/95/83/1000_F_1031958343_xWNzJjzOBonSjvzLkFskGdyumrzwKbVG.jpg",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            // Space between image and text
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Customized Haircuts:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 45),
                              child: Text(
                                "Haircut forwomen ",
                                style:
                                TextStyle(color: Colors.black38, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "for normal haircut, ",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.indigo.shade500,
                                    size: 19,
                                  ),
                                ),
                                Text(
                                  "15%",
                                  style: TextStyle(
                                      color: Colors.indigo.shade500, fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "₹90 start",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.indigo.shade500,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "for designing haircut, ",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.indigo.shade500,
                                  size: 19,
                                ),
                              ),
                              Text(
                                "20%",
                                style: TextStyle(
                                    color: Colors.indigo.shade500, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "₹150 start",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.indigo.shade500,
                                  size: 20,
                                ),
                              )
                            ]),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 0),
                  child: Card(
                    child: Container(
                        height: 360,
                        width: 170,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://as1.ftcdn.net/v2/jpg/10/31/95/92/1000_F_1031959295_iOohDrKtS7BN9QkUi3OaIxUpMbUlxvn6.jpg",
                                height: 150,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              // Space between image and text
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text(
                                  "Customized facial:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 41),
                                child: Text(
                                  "facial for women ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 48),
                                child: Text(
                                  "for normal facial, ",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.indigo.shade500,
                                      size: 19,
                                    ),
                                  ),
                                  Text(
                                    "10%",
                                    style: TextStyle(
                                        color: Colors.indigo.shade500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "₹250 start",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.indigo.shade500,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(
                                  "for pack facial, ",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.indigo.shade500,
                                      size: 19,
                                    ),
                                  ),
                                  Text(
                                    "20%",
                                    style: TextStyle(
                                        color: Colors.indigo.shade500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "₹500 start",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.indigo.shade500,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ])),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}