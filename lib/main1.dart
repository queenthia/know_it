import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.green,
            ],
          )),
          child: //Center(
              // child: Text(
              //   'Hello Gradient!',
              //   style: TextStyle(
              //     fontSize: 48.0,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              // ),
              // child: Image.asset(
              //   "images/it.png",
              //   // height: 50,
              //   // width: 700,
              //     ),
              //   ),
              // ),
              Center(
            child: ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                // Navigate to second route when tapped.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "images/o x x.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white70,
            child: SingleChildScrollView(
              // controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //for user profile
                  Container(
                    padding: const EdgeInsets.only(
                      left: 32,
                      right: 32,
                      top: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipOval(
                            child: Image.asset(
                              "images/o x x.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Olgita",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontFamily: "Roboto",
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Gamer",
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: "Roboto",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.gamepad,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  //Performance
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "23",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                              const Text(
                                "Games Played",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.movie,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                              const Text(
                                "Tutorials watched",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                              const Text(
                                "Stars gained",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Games performed",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          //  width: MediaQuery.of(context).size.width-64,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Round ${index + 1}",
                                        style: const TextStyle(
                                            color: Colors.lightBlue,
                                            fontSize: 18,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "U were fast at completing the Puzzle",
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 14,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              );
                            },
                            itemCount: 5,
                            shrinkWrap: true,
                            controller:
                                ScrollController(keepScrollOffset: false),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
