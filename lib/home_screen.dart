import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";
import "package:get/get_navigation/src/extension_navigation.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx"),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: Text("Getx Dialog box" ),
              subtitle: Text("Hey we are using Dialodbox"),
              onTap: () {
                Get.defaultDialog(
                  title: "Hello Daksh",
                  titlePadding: EdgeInsets.all(10),
                  middleText: "Do you wish to contimue",
                  content: Column(
                    children: [
                      Text("Hii"),
                      Text("Hii"),
                      Text("Hii"),
                      Text("Hii"),
                      Text("Hii"),
                    ],
                  ),
                  onConfirm: () {
                    Get.back();
                  },
                  onCancel: () {},
                  backgroundColor: Colors.greenAccent,
                  
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: Text("Getx Bottomsheet"),
              subtitle: Text("Hey we are changing theme"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        TextButton(onPressed: () {
                          Get.changeTheme(ThemeData.light());
                        }, child: Text("Light Theme")),
                        TextButton(onPressed: () {
                          Get.changeTheme(ThemeData.dark());
                        }, child: Text("Dark Theme")),
                      ],
                    ),
                  )
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          "hello daksh",
          "good morning",
          snackPosition: SnackPosition.BOTTOM,
        );
      }),
    );
  }
}
