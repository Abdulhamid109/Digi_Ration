// import 'package:digital_ration/pages/FeedMain.dart';
import 'package:digital_ration/pages/compMain.dart';
import 'package:digital_ration/pages/feedback_page.dart';
import 'package:flutter/material.dart';

class complaint_page extends StatefulWidget {
  const complaint_page({Key? key}) : super(key: key);

  @override
  State<complaint_page> createState() => _complaint_pageState();
}

class _complaint_pageState extends State<complaint_page> {
  @override
  Widget build(BuildContext context) {
    List names = [
      "Abhinav Singh",
      "Akhil Shrivastav",
      "Samay Gurjar",
      "Sheyansh seth",
      "ABC User"
    ];
    String item1 = "Feedback Page";
    String item2 = "Complaint Page";
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: const Column(
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Mr S.A.Patil",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        // centerTitle: true,
        actions: [
          const Text(
            "Complaint",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.person_outline),
          // IconButton(
          //   icon: const Icon(Icons.arrow_drop_down_circle),
          //   onPressed: () {
          //     //Do Something
          //   },
          // ),
          GestureDetector(
            child: PopupMenuButton(
              itemBuilder: (context)=>[
                PopupMenuItem(
                  value: item1,
                  child: Text(item1),
                  onTap: () => setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const feedback_page()));
                  })
                ),
                PopupMenuItem(
                  value: item2,
                  child: Text(item2),
                  onTap: () =>  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const complaint_page()));
                  }),
                ),
                
              ],
              icon: const Icon(Icons.arrow_drop_down_circle),
              ),
          )
        
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Do Something
          },
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              elevation: 8,
              child: Container(
                width: 200,
                height: 170,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${names[index]}",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Phone No: +91XXXXXXXX78",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "R.Card No: XXXXXXXXXXXXX15",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Latest Collection date: 12-4-2023",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
                              onPressed: () {
                                // Feed(names[index]);
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const compMain()));
                                });
                              },
                              child: const Text("Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
