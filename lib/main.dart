import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade900,
        appBar: AppBar(backgroundColor: Colors.green.shade900),
        body: DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//   // removed const from const DiscePage({super.key});
//   DicePage({super.key});
//   var DiceNum = 2;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 150.0,
//             width: 150.0,
//             child: TextButton(
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.green.shade900,
//               ),
//               onPressed: () {
//                 print('$DiceNum btn is pressed');
//               },
//               child: Image.asset('assets/images/dice$DiceNum.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade900,
              ),
              onPressed: () {
                print('$diceNum btn is pressed');
              },
              child: Image.asset('assets/images/dice$diceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
