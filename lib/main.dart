import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Explore',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'SourceSans3',
            ),
          ),
          centerTitle: true,
        ),
        //this is the Application Body
        body: SafeArea(
          child: Column(
            children: <Widget>[
              //this is the container carring the first image with country name
              Container(
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/tokyo home.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      offset: new Offset(-10.0, 10.0),
                      blurRadius: 30.0,
                      spreadRadius: 5.0,
                    )
                  ],
                  // color: Color.fromARGB(255, 49, 9, 88),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 80,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )),
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 70,
                      child: Text(
                        'Japan',
                        style: TextStyle(
                            fontFamily: 'SourceSans3',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal.shade800),
                      ),
                    ),
                  ],
                ),
              ),
              //this is the spacing between the contry name card and city visit card
              SizedBox(
                height: 20,
              ),
              //this is the city visit card
              Container(
                height: 230,
                child: Stack(
                  children: [
                    Positioned(
                        top: 35.0,
                        left: 20,
                        child: Material(
                          child: Container(
                            height: 180.0,
                            width: 400.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: new Offset(-10.0, 10.0),
                                  blurRadius: 30.0,
                                  spreadRadius: 5.0,
                                )
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                      top: 0,
                      left: 30.0,
                      child: Card(
                        elevation: 10.0,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image: AssetImage('images/tokyoA.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 260,
                      child: Container(
                        height: 150,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tokyo City',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade800,
                              ),
                            ),
                            Text(
                              'Visit City',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Text(
                              'Tokyo a the capital city of Japan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //this is the beggining of the list view cards
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 41, 10, 164),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/tokyoB.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 0.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(
                            left: 32.0,
                            top: 50.0,
                            bottom: 50.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The BEST',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.teal.shade200,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Your life statr here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 41, 10, 164),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(80.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/tokyo home.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 0.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(
                            left: 32.0,
                            top: 50.0,
                            bottom: 50.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The BEST',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.teal.shade200,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Your life statr here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 41, 10, 164),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(80.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/tokyoC.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 0.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(
                            left: 32.0,
                            top: 50.0,
                            bottom: 50.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The BEST',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.teal.shade200,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Your life statr here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 41, 10, 164),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(80.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/tokyoD.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 0.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(
                            left: 32.0,
                            top: 50.0,
                            bottom: 50.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The BEST',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.teal.shade200,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Your life statr here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
