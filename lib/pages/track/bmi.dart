// import 'package:flutter/material.dart';

// class BMICalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BMI Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BMICalculatorScreen(),
//     );
//   }
// }

// class BMICalculatorScreen extends StatefulWidget {
//   @override
//   _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
// }

// class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
//   TextEditingController heightController = TextEditingController();
//   TextEditingController weightController = TextEditingController();
//   late double bmiResult;
//   late String bmiCategory;

//   void calculateBMI() {
//     double? height = double.tryParse(heightController.text);
//     double? weight = double.tryParse(weightController.text);

//     if (height != null && weight != null) {
//       setState(
//         () {
//           bmiResult = weight / (height * height);
//           if (bmiResult < 18.5) {
//             bmiCategory = 'Underweight';
//           } else if (bmiResult >= 18.5 && bmiResult < 25) {
//             bmiCategory = 'Normal weight';
//           } else if (bmiResult >= 25 && bmiResult < 30) {
//             bmiCategory = 'Overweight';
//           } else {
//             bmiCategory = 'Obese';
//           }
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BMI Calculator'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 controller: heightController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Height (in meters)',
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               TextField(
//                 controller: weightController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Weight (in kg)',
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: calculateBMI,
//                 child: Text('Calculate BMI'),
//               ),
//               SizedBox(height: 16.0),
//               Text(
//                 'BMI Result: ${bmiResult?.toStringAsFixed(2) ?? ""}',
//                 style: TextStyle(fontSize: 20),
//               ),
//               Text(
//                 'Category: $bmiCategory',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }