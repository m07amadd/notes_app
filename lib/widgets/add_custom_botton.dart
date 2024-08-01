import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xff56ECD7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
