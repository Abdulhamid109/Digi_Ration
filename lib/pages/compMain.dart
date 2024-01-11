import 'package:digital_ration/pages/Dasboard.dart';
import 'package:digital_ration/pages/complaint_page.dart';
import 'package:digital_ration/pages/feedback_page.dart';
import 'package:flutter/material.dart';

class compMain extends StatefulWidget {
  const compMain({Key? key}) : super(key: key);

  @override
  State<compMain> createState() => _compMainState();
}

class _compMainState extends State<compMain> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String item1 = "Feedback Page";
    String item2 = "Complaint Page";
    return SafeArea(
      child: Scaffold(
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
                    fontSize: 15,
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(width: 20,),
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
                  onTap: () =>  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const feedback_page()));
                  }),
                ),
                PopupMenuItem(
                  value: item2,
                  child: Text(item2),
                  onTap: () =>  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const complaint_page()));
                  })
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
        body: SingleChildScrollView(
          child: Center(
            child: Stack(
              // clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Card(
                  elevation: 8,
                  child: Container(
                    height: height / 1.5,
                    width: width / 1.3,
                    color: Colors.white30,
                  ),
                ),
                //Avatar container
                Container(
                  margin: const EdgeInsets.only(bottom: 485),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black54,
                    radius: 50,
                    backgroundImage: AssetImage("images/user.jpg"),
                  ),
                ),
                //username container
                Container(
                  margin: const EdgeInsets.only(bottom: 335),
                  child: const Text(
                    "USERNAME",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // Full name Container
                Container(
                  margin: const EdgeInsets.only(bottom: 250, right: 80),
                  child: const Text(
                    "Full Name: ABC USER",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                // Adhar no container
                Container(
                  margin: const EdgeInsets.only(bottom: 190, right: 15),
                  child: const Text(
                    "Adhar No : XXXXXXXXXXX124",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 190),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      clipBehavior: Clip.none,
                      height: height / 2.7,
                      width: width / 1.5,
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Complaint No: 101",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Grains Quality is dull!!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 580),
                  child: ElevatedButton(
                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
                    onPressed: () {
                      // go to Dashboard
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()));
                      });
                    },
                    child: const Text("Dashboard",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
