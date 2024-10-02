// // ignore_for_file: non_constant_identifier_names

// // import 'dart:math';

// import 'package:electric_bill_checker/billscreen.dart';
// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<String> name = [
//     'IESCO',
//     'MEPCO',
//     'GEPCO',
//     'PESCO',
//     'QESCO',
//     'FESCO',
//     'HESCO',
//     'SEPCO',
//     'LESCO',
//     'TESCO',
//     'K-Electric',
//   ];
//   List<String> sub_name = [
//     'Islamabad',
//     'Multan',
//     'Gujranwala',
//     'KPK',
//     'Quetta',
//     'Faisalabad',
//     'Hyderabad',
//     'Sukkar',
//     'Lehore',
//     'Tribal',
//     'Karachi',
//   ];
//   List<String> picture = [
//     'images/iesco.jpeg',
//     'images/mepco.jpeg',
//     'images/gepco.jpeg',
//     'images/pesco.jpeg',
//     'images/qesco.jpeg',
//     'images/fesco.png',
//     'images/hesco.jpeg',
//     'images/sepco.jpeg',
//     'images/lesco.jpeg',
//     'images/tesco.png',
//     'images/k-electric.jpeg',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             'Electricity Bill check',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 1,
//                     mainAxisSpacing: 4,
//                     crossAxisSpacing: 4),
//                 itemCount: name.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     // margin: EdgeInsets.all(5),
//                     height: 150,
//                     width: 120,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(20),
//                         ),
//                         color: const Color.fromARGB(137, 167, 73, 73)),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(4.0),
//                           child: SizedBox(
//                             height: 115,
//                             width: 120,
//                             child: ClipOval(
//                                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                                 child: GestureDetector(
//                                   child: Image.asset(picture[index]),onDoubleTap: () {
//                                     Navigator.push(context, MaterialPageRoute(builder: (context) => Billscreen(name: name[index],),));
//                                   },
//                                 )),
//                           ),
//                         ),
//                         Text(
//                           name[index],
//                           style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white60),
//                         ),
//                         Text(
//                           sub_name[index],
//                           style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// home.dart
import 'package:electric_bill_checker/billscreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> name = [
    'IESCO',
    'MEPCO',
    'GEPCO',
    'PESCO',
    'QESCO',
    'FESCO',
    'HESCO',
    'SEPCO',
    'LESCO',
    'TESCO',
    'K-Electric',
  ];
  List<String> subName = [
    'Islamabad',
    'Multan',
    'Gujranwala',
    'KPK',
    'Quetta',
    'Faisalabad',
    'Hyderabad',
    'Sukkar',
    'Lahore',
    'Tribal',
    'Karachi',
  ];
  List<String> picture = [
    'images/iesco.jpeg',
    'images/mepco.jpeg',
    'images/gepco.jpeg',
    'images/pesco.jpeg',
    'images/qesco.jpeg',
    'images/fesco.png',
    'images/hesco.jpeg',
    'images/sepco.jpeg',
    'images/lesco.jpeg',
    'images/tesco.png',
    'images/k-electric.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Electricity Bill Check',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(137, 167, 73, 73),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      height: 115,
                      width: 120,
                      child: ClipOval(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: GestureDetector(
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Billscreen(
                                  name: name[index],
                                ),
                              ),
                            );
                          },
                          child: Image.asset(picture[index]),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    name[index],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                  ),
                  Text(
                    subName[index],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
