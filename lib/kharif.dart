import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:poornaapp/vari.dart';

class kharif extends StatefulWidget {
  kharif({Key? key}) : super(key: key);

  @override
  _kharifState createState() => _kharifState();
}

class _kharifState extends State<kharif> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Scrollbar(
                isAlwaysShown: true,
                showTrackOnHover: true,
                hoverThickness: 30.0,
                child: ListView(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: Container(
                          height: 50,
                          child: DropDown(
                              items: ["వరి"],
                              hint: Text("పంట ఎంపిక"),
                              onChanged: (val) {
                                if (val == "వరి") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => vari()));
                                }
                              }),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("ఖరీఫ్"),
          centerTitle: true,
        ),
      ),
    );
  }
}
