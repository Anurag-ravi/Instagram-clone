import 'package:flutter/material.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({Key? key}) : super(key: key);

  @override
  _ReelPageState createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Row(
            children: [
              SizedBox(
                width: deviceWidth * .25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Work',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('ongoing',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('for',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('this',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('page,',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('Will',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('serve',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('you',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('soon',style: TextStyle(fontSize: deviceWidth*.1),),
                  Text('😄😄😄😄',style: TextStyle(fontSize: deviceWidth*.1),),

                ],
              ),
            ],
          ),
      ),
      bottomNavigationBar: Container(
        height: deviceWidth * 0.175,
        child: BottomNavigationBar(
          iconSize: deviceWidth * 0.07,
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mainpage');
                },
                alignment: Alignment.topCenter,
                icon: Image.asset(
                  'assets/home.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0000000000001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/searchpage');
                },
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/search.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/reelpage');
                },
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/reel1.png',
                  height: deviceWidth * 0.08,
                  width: deviceWidth * 0.08,
                ),
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/activitypage');
                },
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/heart0.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilepage');
                },
                alignment: Alignment.center,
                icon: CircleAvatar(
                  radius: deviceWidth * 0.12,
                  backgroundImage: AssetImage(
                    "assets/dp.jpg",
                  ),
                ),
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
