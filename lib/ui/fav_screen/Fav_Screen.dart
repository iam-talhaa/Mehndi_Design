import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Fav_Screen extends StatefulWidget {
  const Fav_Screen({super.key});

  @override
  State<Fav_Screen> createState() => _Fav_ScreenState();
}

class _Fav_ScreenState extends State<Fav_Screen> {
  bool isFavorite = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadFavorite();
  }

  Future<void> _loadFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool('isFavorite') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _toggleFavorite() async {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        isFavorite = !isFavorite;
        prefs.setBool('isFavorite', isFavorite);
        print(isFavorite);
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return;
                }),
          )
        ],
      ),
    );
  }
}
