import 'package:flutter/material.dart';

class questionCard extends StatelessWidget {
  final String question;
  const questionCard({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: 346,
      constraints: const BoxConstraints(maxHeight: 165),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17, left: 21),
                child: Text(
                  "Asking 1 people everyday at",
                  style: TextStyle(fontSize: 11),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 21),
                child: Container(
                  width: 200,
                  child: Text(
                    question,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
