import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final double height = 130;
  final List<String> list1 = [
    'Gospel Artist',
    'Raggae Songs',
  ];
  final List<String> list2 = ['Party Breaker', 'Birthday Spacial'];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: List.generate(
                2,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(list1[index]),
                              height: height,
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(list2[index]),
                              height: height,
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ))));
  }
}
