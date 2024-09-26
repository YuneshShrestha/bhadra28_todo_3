import 'package:counter_app/home_screen.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var figmaWidth = 360;
    var figmaHeight = 640;
    var widthRatio = MediaQuery.of(context).size.width / figmaWidth;
    var heightRatio = MediaQuery.of(context).size.height / figmaHeight;
    return Scaffold(body: SafeArea(
      child: LayoutBuilder(builder: (ctx, constraints) {
        if (constraints.maxWidth > 400) {
          return Row(
            children: [
              // Image
              Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Image.asset('assets/todo_landing.png')),
              // Column
              Flexible(
                flex: 7,
                child: Column(
                  children: [
                    Text(
                      'Get things done with TODo',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18 * widthRatio,
                      ),
                    ),
                    SizedBox(
                      height: 15 * heightRatio,
                    ),
                    // Text
                    Padding(
                      padding: EdgeInsets.only(
                        left: 65 * widthRatio,
                        right: 53 * widthRatio,
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet.',
                        style: TextStyle(
                          fontSize: 13 * widthRatio,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 60 * heightRatio,
                    ),
                    // Button
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 310 * widthRatio,
                        height: 60 * heightRatio,
                        color: Color(0xFFFAA885),
                        child: Center(
                            child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18 * widthRatio,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              Image.asset('assets/todo_landing.png'),
              SizedBox(
                height: 60 * heightRatio,
              ),
              // Text
              Text(
                'Get things done with TODo',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18 * widthRatio,
                ),
              ),
              SizedBox(
                height: 15 * heightRatio,
              ),
              // Text
              Padding(
                padding: EdgeInsets.only(
                  left: 65 * widthRatio,
                  right: 53 * widthRatio,
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet.',
                  style: TextStyle(
                    fontSize: 13 * widthRatio,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60 * heightRatio,
              ),
              // Button
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return HomeScreen();
                  }));
                },
                child: Container(
                  width: 310 * widthRatio,
                  height: 60 * heightRatio,
                  color: Color(0xFFFAA885),
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18 * widthRatio,
                    ),
                  )),
                ),
              ),
            ],
          );
        }
      }),
    ));
  }
}
