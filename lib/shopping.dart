import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  final List<String> _listitems = [
    "https://uidesign.gbtcdn.com/gb_blog/4315/4-easy-ways-to-speed-up-your-computer-C01.jpg",
    "https://icdn2.digitaltrends.com/image/digitaltrends/microsoft-surface-studio-2-6010.jpg",
    "https://www.chicagotribune.com/resizer/M80Dfl9fDp9RScEUIxkzG5y9jk0=/1200x0/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/HSNDDQUNJA7TAP7OJ5QPMBKR4E.jpg",
    "https://promomyanmar.com/wp-content/uploads/2020/08/best-gaming-pc-2020.jpg",
    "https://static-01.daraz.com.bd/p/3402fe445ed589beae56b7e5f0ff76c5.jpg",
    "https://image.shutterstock.com/image-photo/office-working-note-computer-table-260nw-1571546794.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("0"),
                ),
              ),
            ),
          ],
          title: Text("Shop"),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images-na.ssl-images-amazon.com/images/G/01/US-hq/2018/img/PC_Hardware/XCM_1095776_Manual_750x375_1095776_us_pc_hardware_pcit_maincomputersstorefront_tablets_v3_cg_750x375_jpg_PCIT_PCIT_mainComputersStorefront_Additional_Stock_photos.jpg"),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.2)
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Best Computer",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(5),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listitems
                        .map((item) => Card(
                              color: Colors.transparent,
                              elevation: 2,
                              child: Center(
                                child: Container(
                                  child: Transform.translate(
                                    offset: Offset(55, -50),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 65, vertical: 65),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.bookmark_border,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(item),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Center(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign out",
                        style: TextStyle(fontSize: 35),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
