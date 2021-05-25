import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              if (snapshot != null &&
                  snapshot.hasData &&
                  snapshot.data != ConnectivityResult.none) {
                return Text(
                  'Connect',
                  style: TextStyle(fontSize: 30),
                );
              } else {
                return Icon(
                  Icons.wifi_off,
                  size: 50,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
