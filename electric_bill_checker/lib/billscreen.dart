// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Billscreen extends StatefulWidget {
  final String name;

  const Billscreen({super.key, required this.name});

  @override
  State<Billscreen> createState() => _BillscreenState();
}

class _BillscreenState extends State<Billscreen> {
  final TextEditingController _referenceController = TextEditingController();

  @override
  void dispose() {
    _referenceController.dispose();
    super.dispose();
  }

  Future<void> fetchBill(String reference) async {
    final url = Uri.https('bill.pitc.com.pk', '/${widget.name}bill/general',
        {'refno': reference});

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Display the fetched bill data
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:  Text(
              'Bill fetched successfully: ${response.body}',
            ),
          ),
        );
      } else {
        // Display error message if status code is not 200
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Failed to fetch the bill. Status Code: ${response.statusCode}')),
        );
      }
    } catch (e) {
      // Handle any network or request errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Error: Could not fetch bill. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.name} Bill'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter The Reference No.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _referenceController,
              decoration: InputDecoration(
                labelText: 'Reference No of ${widget.name} Bill',
                hintText: 'Enter 14 digit Reference No',
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
              keyboardType: TextInputType.number,
              maxLength: 14,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String reference = _referenceController.text;
                if (reference.length == 14) {
                  // Call fetchBill if the reference number is valid
                  fetchBill(reference);
                } else {
                  // Show an error if the reference number is invalid
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'Please enter a valid 14-digit reference number.')),
                  );
                }
              },
              child: Text('Submit Reference'),
            ),
          ],
        ),
      ),
    );
  }
}
// // billscreen.dart
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Billscreen extends StatefulWidget {
//   final String name;

//   const Billscreen({super.key, required this.name});

//   @override
//   State<Billscreen> createState() => _BillscreenState();
// }

// class _BillscreenState extends State<Billscreen> {
//   final TextEditingController _referenceController = TextEditingController();

//   @override
//   void dispose() {
//     _referenceController.dispose();
//     super.dispose();
//   }

//   Future<void> fetchBill(String reference) async {
//     final url = Uri.https('bill.pitc.com.pk', '/${widget.name}bill/general', {'refno': reference});

//     try {
//       final response = await http.get(url);

//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Bill fetched successfully: ${response.body}'),duration: Duration( minutes: 2),),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to fetch the bill. Status Code: ${response.statusCode}')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: Could not fetch bill. Please try again.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.name} Bill'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Enter The Reference No.',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: _referenceController,
//               decoration: InputDecoration(
//                 labelText: 'Reference No of ${widget.name} Bill',
//                 hintText: 'Enter 14 digit Reference No',
//                 border: OutlineInputBorder(),
//                 contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//               ),
//               keyboardType: TextInputType.number,
//               maxLength: 14,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 String reference = _referenceController.text;
//                 if (reference.length == 14) {
//                   fetchBill(reference);
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Please enter a valid 14-digit reference number.')),
//                   );
//                 }
//               },
//               child: Text('Submit Reference'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
