// import 'dart:async';

// import 'package:electric_bill_checker/home.dart';
// import 'package:flutter/material.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
//   late AnimationController animcont;
//   @override
//   void initState() {
//     animcont = AnimationController(vsync: this, duration: Duration(seconds: 2));
//     animcont.forward();
//     super.initState();
//     Timer(Duration(seconds: 4), () {
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => Home(),
//           ));
//     });
//   }

//   @override
//   void dispose() {
//     animcont.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Image(
//                   image: AssetImage('images/importance-of-electricity.jpg'),
//                   fit: BoxFit.contain,
//                 ),
//                 Positioned(
//                   bottom: 100,
//                    left: 50,
//                   child: SlideTransition(
//                       position:
//                           Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
//                               .animate(animcont),
//                       child: Text(
//                         'Check Your Electricity Bills',
//                         style: TextStyle(
//                           backgroundColor: Colors.white,
//                           fontSize: 30,
//                         ),
//                       )),
//                 ),
//               ],
//             ),
//           ]),
//     );
//   }
// }
// splash.dart
import 'dart:async';
import 'package:electric_bill_checker/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController animcont;

  @override
  void initState() {
    super.initState();
    animcont = AnimationController(vsync: this, duration: Duration(seconds: 2));
    animcont.forward();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

  @override
  void dispose() {
    animcont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'images/importance-of-electricity.jpg',
              fit: BoxFit.contain,
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              bottom: 100,
              left: 50,
              child: SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
                        .animate(animcont),
                child: Text(
                  'Check Your Electricity Bills',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
