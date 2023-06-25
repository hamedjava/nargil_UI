import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nargil_ui/custom_home_page.dart';
import 'package:nargil_ui/provider/drawer_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ScaffoldKeyState>(
          create: (_) {
            return ScaffoldKeyState();
          },
        ),
      ],
      child: LoginUiApp(),
    ),
  );
}

class LoginUiApp extends StatelessWidget {
  // Color _primaryColor = HexColor('#DC54FE');
  // Color _accentColor = HexColor('#5AD3BC');

  // Design color
  // Color _primaryColor = HexColor('#FFC867');
  // Color _accentColor = HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  Color _primaryColor = HexColor('#651BD2');
  Color _accentColor = HexColor('#320181');

  LoginUiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: _primaryColor,
          scaffoldBackgroundColor: Colors.grey.shade100,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
              .copyWith(secondary: _accentColor),
        ),
        home: const CustomHomePage());
  }
}
