import 'package:flutter/material.dart';
import 'package:nargil_ui/common/theme_helper.dart';
import 'package:nargil_ui/globals/globals.dart';
import 'package:nargil_ui/pages/widgets/custom_drawer.dart';
import 'package:nargil_ui/provider/drawer_state.dart';
import 'package:provider/provider.dart';

import 'pages/widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  /*GlobalKey<DrawerControllerState> drawerControllState =
      GlobalKey<DrawerControllerState>();*/
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _headerHeight = 150;
  Key _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: context.read<ScaffoldKeyState>().getScffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(_headerHeight, true, Icons.person),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: EdgeInsets.fromLTRB(
                  20, 10, 20, 10), // This will be the login form
              child: Column(children: [
                Text(
                  'N A R G I L',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Form(
                  key: _formKey,
                  child: Column(children: [
                    Container(
                      child: TextField(
                        decoration: ThemeHelper().textInputDecoration('search'),
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(height: 15.0),
                  ]),
                ),
              ]),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge_rounded),
            label: 'Business',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
