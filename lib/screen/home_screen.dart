import 'package:flutter/material.dart';
import 'package:flutter_prac_river/layout/default_layout.dart';
import 'package:flutter_prac_river/screen/auto_dispose_modifier.dart';
import 'package:flutter_prac_river/screen/family_modifier_screen.dart';
import 'package:flutter_prac_river/screen/future_provider_screen.dart';
import 'package:flutter_prac_river/screen/listen_provider_screen.dart';
import 'package:flutter_prac_river/screen/provider_screen.dart';
import 'package:flutter_prac_river/screen/select_provider_screen.dart';
import 'package:flutter_prac_river/screen/state_notifier_provider.dart';
import 'package:flutter_prac_river/screen/state_provider_screen.dart';
import 'package:flutter_prac_river/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => StateProviderScreen(),
                ),
              );
            },
            child: Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => StateNotifierProviderScreen()));
            },
            child: Text('StateNotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => FutureProviderScreen()));
            },
            child: Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => StreamProviderScreen()));
            },
            child: Text('StreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => FamilyModifierSceen()));
            },
            child: Text('FamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => AutoDisposeModifierScreen()));
            },
            child: Text('AutoDisposeModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => ListenProviderSceen()));
            },
            child: Text('ListenProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SelectProviderScreen()));
            },
            child: Text('SelectProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ProviderScreen()));
            },
            child: Text('ProviderScreen'),
          )
        ],
      ),
    );
  }
}
