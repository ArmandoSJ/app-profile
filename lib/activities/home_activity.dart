import 'package:app_profile/widgets/custom_navigatorbar.dart';
import 'package:flutter/material.dart';


class HomeActivity extends StatefulWidget {

  @override
  _HomeActivityState createState() => _HomeActivityState();
  
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UiActivity(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}

class UiActivity extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("assets/flutter-dart.png"),
                  fit: BoxFit.cover
                )
              ),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0,2.5),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "assets/UserIcon.png"
                  ),
                  radius: 60.0,
                ),
              ),
            ),
            ),
            SizedBox(height: 60),
            Text("Jose Armando", 
                style: TextStyle(
                fontSize: 20.0,
                color:Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
                ),
            ),
            SizedBox(height: 10),
            Text("Celaya Gto.",
                style: TextStyle(
                fontSize: 15.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
                ),
            ),
            SizedBox(height: 10),
            Text("Software Development",
                style: TextStyle(
                fontSize: 10.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
                ),
            ),
            SizedBox(height: 10),
          
            Text("Flutter Developer ", 
                  style: TextStyle(
                      fontSize: 18.0,
                      color:Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300
                  ),
            ),
            SubHeadActivity(),
            SizedBox(height: 50),
            //ButtonsActivity()
          ],
        ),
    );
  }
  
}

class SubHeadActivity extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("100",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                            ),),
                          SizedBox(height: 7),
                          Text("Followers",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 15.0,
                            ),)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("400",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                            ),),
                          SizedBox(height: 7),
                          Text("Following",
                                style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 15.0,
                                ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                              onPressed: () {},
                              child: Text('Seguir'),
                              style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.pink.shade100,
                                  textStyle: TextStyle(fontSize: 12),
                                  shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(80.0),
                                  ),
                              ),
                              
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}