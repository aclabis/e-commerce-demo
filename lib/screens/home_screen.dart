import 'package:blog/api/models/product_model.dart';
import 'package:blog/api/services/product_api_service.dart';
import 'package:blog/app_drawer/notes.dart';
import 'package:blog/firebase/firebase_auth.dart';
import 'package:blog/screens/info.dart';
import 'package:blog/screens/setting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          appBar: AppBar(
            toolbarHeight: 2,
          ),
          drawer: Drawer(
            width: width * 0.75,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: height * 0.26,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 208, 154),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/brother.jpg'),
                        ),
                        Text(
                          "mingo",
                          style: TextStyle(
                            fontSize: height * 0.026,
                            fontFamily: 'Poppins-Regular',
                          ),
                        ),
                        Text("hello90@gmail.com")
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                  },
                ),
                ListTile(
                  title: Text('Dashboard'),
                  leading: Icon(Icons.dashboard),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Event'),
                  leading: Icon(Icons.event),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Notes'),
                  leading: Icon(Icons.notes),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Notes()));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('setting'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>setting()));
                  },
                ),
                ListTile(
                  title: Text('Notification'),
                  leading: Icon(Icons.notifications_active),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('privacy policy'),
                  leading: Icon(Icons.privacy_tip_rounded),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Send feedback'),
                  leading: Icon(Icons.feedback),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('logout'),
                  leading: Icon(Icons.logout_outlined),
                  onTap: () {
                    FireBaseAuthService().signOut();
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 1,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Builder(builder: (context) {
                            return IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                icon: Icon(Icons.menu));
                          })),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.data_exploration_sharp)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Our",
                    style: TextStyle(
                      fontSize: height * 0.036,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Products',
                    style: TextStyle(
                      fontSize: height * 0.036,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Tap to Search',
                      suffixIcon: Icon(Icons.menu),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Our Items",
                    style: TextStyle(
                      fontSize: height * 0.036,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FutureBuilder<List<ProductModel>>(
                  future: ProductApiServices().getProductApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return SizedBox(
                        height: height * 0.45,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Information()));
                                  },
                                  child: Container(
                                    // height: ,

                                    width: width * 0.49,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(0, 1),
                                          )
                                        ]),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        CircleAvatar(
                                            radius: 70,
                                            backgroundImage: NetworkImage(
                                                snapshot.data![index].image)),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Text(
                                          snapshot.data![index].name,
                                          style: TextStyle(
                                            fontSize: height * 0.024,
                                            fontFamily: 'Poppins-Regular',
                                          ),
                                        ),
                                        Text(snapshot.data![index].id
                                            .toString()),
                                        Text(snapshot.data![index].creationAt
                                            .toString()),
                                        Text(snapshot.data![index].updatedAt
                                            .toString())
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Best Items",
                    style: TextStyle(
                      fontSize: height * 0.036,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                ),
                FutureBuilder<List<ProductModel1>>(
                  future: ProductApiServicess().getProductApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return SizedBox(
                        height: height * 0.48,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  // height: ,

                                  width: width * 0.65,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 1,
                                          offset: Offset(0, 1),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      CircleAvatar(
                                          radius: 70,
                                          backgroundImage: NetworkImage(
                                              snapshot.data![index].image)),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Text(
                                        snapshot.data![index].title,
                                        style: TextStyle(
                                          fontSize: height * 0.024,
                                          fontFamily: 'Poppins-Regular',
                                        ),
                                      ),
                                      Text(snapshot.data![index].id.toString()),
                                      Text(snapshot.data![index].category),
                                      Text(snapshot.data![index].price
                                          .toString())
                                    ],
                                  ),
                                ),
                              );
                            }),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
