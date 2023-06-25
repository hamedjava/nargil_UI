import 'package:flutter/material.dart';
import 'package:nargil_ui/pages/widgets/custom_drawer.dart';
import 'package:nargil_ui/pages/widgets/header_widget.dart';
import 'package:nargil_ui/provider/drawer_state.dart';
import 'package:provider/provider.dart';

class CustomHomePage extends StatefulWidget {
  const CustomHomePage({super.key});

  @override
  State<CustomHomePage> createState() => _CustomHomePageState();
}

class _CustomHomePageState extends State<CustomHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      key: context.read<ScaffoldKeyState>().getScffoldKey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: HeaderWidget(200, true, Icons.person),
            toolbarHeight: 120,
            automaticallyImplyLeading: false,
            actions: [],
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => const ListTile(
                      title: Text("hamed"),
                      leading: Icon(Icons.menu),
                    ),
                childCount: 20),
          ),
        ],
      ),
    );
  }
}
