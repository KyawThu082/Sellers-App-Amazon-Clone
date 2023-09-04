import 'package:flutter/material.dart';

import '../brandScreens/home_screen.dart';

// ignore: must_be_immutable
class StatusBanner extends StatelessWidget {
  bool? status;
  String? orderStatus;

  StatusBanner({super.key, this.status, this.orderStatus});

  @override
  Widget build(BuildContext context) {
    String? message;
    IconData? iconData;

    status! ? iconData = Icons.done : iconData = Icons.cancel;
    status! ? message = "Successful" : message = "Unsuccessful";

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pinkAccent,
            Colors.purpleAccent,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
        ),
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => const HomeScreen()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 30),
          Text(
            orderStatus == "ended"
                ? "Parcel Delivered $message"
                : orderStatus == "shifted"
                    ? "Parcel Shifted $message"
                    : orderStatus == "normal"
                        ? "Order Placed $message"
                        : " ",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(width: 5),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.grey,
            child: Center(
              child: Icon(
                iconData,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
