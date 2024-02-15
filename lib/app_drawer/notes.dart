import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.025,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: height * 0.045,
                    )),
                SizedBox(
                  width: width * 0.25,
                ),
                Text(
                  "THINK",
                  style: TextStyle(
                      fontSize: height * 0.036,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for notes',
                  suffixIcon: Icon(Icons.menu),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.31,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Product meeting",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          ' 1. Rewiew of previous  action items\n 2 Product Development update\n 3 .user feedback and custumer insights\n 4. compiler analysis\n 5. roadmap discussion ',
                          style: TextStyle(fontSize: height * 0.017),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.31,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 195, 239),
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Selling concept",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          ' 1. Rewiew of previous  action items\n 2 Product Development update\n 3 .user feedback and custumer insights\n 4. compiler analysis\n 5. roadmap discussion ',
                          style: TextStyle(fontSize: height * 0.017),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.31,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 235, 170),
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Shooping list",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          ' 1. Rewiew of previous  action items\n 2 Product Development update\n 3 .user feedback and custumer insights\n 4. compiler analysis\n 5. roadmap discussion ',
                          style: TextStyle(fontSize: height * 0.017),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.31,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 253, 233),
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Notes",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          ' 1. Rewiew of previous  action items\n 2 Product Development update\n 3 .user feedback and custumer insights\n 4. compiler analysis\n 5. roadmap discussion ',
                          style: TextStyle(fontSize: height * 0.017),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.31,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 180, 189),
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Submitt",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          ' 1. Rewiew of previous  action items\n 2 Product Development update\n 3 .user feedback and custumer insights\n 4. compiler analysis\n 5. roadmap discussion ',
                          style: TextStyle(fontSize: height * 0.017),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.31,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 183, 214, 240),
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                          
                        ),
                        Text(
                          "Best product",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          ' 1. Rewiew of previous  action items\n 2 Product Development update\n 3 .user feedback and custumer insights\n 4. compiler analysis\n 5. roadmap discussion ',
                          style: TextStyle(fontSize: height * 0.017),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
