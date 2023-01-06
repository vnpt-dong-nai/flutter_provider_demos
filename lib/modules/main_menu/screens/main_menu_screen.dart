import 'package:flutter/material.dart';
import 'package:flutter_provider_demos/modules/demos/screens/simple_values_screen.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class MenuInfo {
  final String id;
  final String title;
  MenuInfo({required this.id, required this.title});
}

const String MNUID_SIMPLE_VALUES = 'Simple.Values';
const String MNUID_OBJECT = 'Object';
const String MNUID_OBJECT_LIST = 'Object.List';

final MENU_DEMOS = [
  MenuInfo(id: MNUID_SIMPLE_VALUES, title: 'Simple Values'),
  MenuInfo(id: MNUID_OBJECT, title: 'Object'),
  MenuInfo(id: MNUID_OBJECT_LIST, title: 'Object List'),
];

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> menus = MENU_DEMOS.map(buildMenuItem).toList();
    return Scaffold(
      appBar: AppBar(title: Text("Main Menu")),
      body: SafeArea(
        child: ListView(children: menus),
      ),
    );
  }

  Widget buildMenuItem(MenuInfo e) {
    return ListTile(
      onTap: () => openDemo(e),
      title: Text(e.title),
    );
  }

  openDemo(MenuInfo e) {
    if (e.id == MNUID_SIMPLE_VALUES) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => SimpleValueScreen()));
    }
  }
}
