import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[300],
            title: Text(
              "setting",
              style: TextStyle(
                fontSize: height * 0.026,
                fontFamily: 'Poppins-Regular',
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.022,
              ),
              InkWell(
                onTap: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                child: Container(
                  height: height * 0.055,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Change theme dark or light",
                      style: TextStyle(
                        fontSize: height * 0.020,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.021,
              ),
              Container(
                height: height * 0.055,
                width: width * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Change theme dark or light",
                    style: TextStyle(
                      fontSize: height * 0.020,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
