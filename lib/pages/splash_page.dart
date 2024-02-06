import 'package:flutter/material.dart';
import 'package:weather_application/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  TextEditingController CityName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cloud,
            size: 60,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: CityName,
            decoration: InputDecoration(
                suffixIcon: InkWell(
                  child: Icon(Icons.subdirectory_arrow_right_rounded),onTap:(){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(CityName: CityName.text,)),
                ); },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(21)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(21)),
                    borderSide: BorderSide(color: Colors.white, width: 4))),
          ),
        ],
      ),
    );
  }
}
