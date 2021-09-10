import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  bool inputTextNotNull = false;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profilepage');
          },
          alignment: Alignment.centerLeft,
          icon: Icon(
            Icons.clear_outlined,
            color: Colors.black,
            size: deviceWidth * 0.08,
          ),
        ),
        title: SizedBox(
          height: deviceWidth * 0.12,
          child: Column(
            children: [
              SizedBox(height: deviceWidth * .02,),
              Row(
                children: [
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'arial',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
            },
            alignment: Alignment.center,
            icon: Icon(
              Icons.check,
              color: Colors.blue,
              size: deviceWidth * 0.09,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                SizedBox(
                  height: deviceWidth * .01,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth * 0.30,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/dp.jpg"),
                          radius: deviceWidth * 0.20,
                        ),
                        SizedBox(
                          height: deviceWidth*.03,
                        ),
                        Text('Change Photo',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: deviceWidth *.055,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Text('Name',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: deviceWidth *.045,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.015,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .1,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      child: Center(
                          child: TextField(
                            onChanged: (text){
                              // setState(() {
                              //   _username=text.trim();
                              //   if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                              //     inputTextNotNull = true;
                              //   }else{
                              //     inputTextNotNull = false;
                              //   }
                              // });
                            },
                            controller: nameController,
                            style: TextStyle(
                              fontSize: deviceWidth * .045,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Name',
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Text('Usename',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: deviceWidth *.045,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.015,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .1,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          onChanged: (text){
                            // setState(() {
                            //   _username=text.trim();
                            //   if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                            //     inputTextNotNull = true;
                            //   }else{
                            //     inputTextNotNull = false;
                            //   }
                            // });
                          },
                          controller: usernameController,
                          style: TextStyle(
                            fontSize: deviceWidth * .045,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Username',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Text('Website',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: deviceWidth *.045,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.015,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .1,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          onChanged: (text){
                            // setState(() {
                            //   _username=text.trim();
                            //   if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                            //     inputTextNotNull = true;
                            //   }else{
                            //     inputTextNotNull = false;
                            //   }
                            // });
                          },
                          controller: websiteController,
                          style: TextStyle(
                            fontSize: deviceWidth * .045,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Website',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Text('Bio',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: deviceWidth *.045,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth*.015,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth*.05,
                    ),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .1,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          onChanged: (text){
                            // setState(() {
                            //   _username=text.trim();
                            //   if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                            //     inputTextNotNull = true;
                            //   }else{
                            //     inputTextNotNull = false;
                            //   }
                            // });
                          },
                          controller: bioController,
                          style: TextStyle(
                            fontSize: deviceWidth * .045,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Bio',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
