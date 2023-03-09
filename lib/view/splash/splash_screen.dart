import 'package:flutter/material.dart';

import '../content/content_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset( 'assets/images/code.jpg') ,
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: ( ) {
              Navigator.push(context, MaterialPageRoute(
                  builder: (ctx ) {
                    return  const ContentScreen();
                  }
              ));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 5  , horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.black ,
                  borderRadius: BorderRadius.circular(20) ,

                  border: Border.all(color: Colors.white)
              ),
              child: const Text('Courses content',
                style: TextStyle (
                    color: Colors.white ,
                    fontSize: 22 ,
                    fontWeight:  FontWeight.bold
                ),
              ),
            ),
          ),

        ],
      ),
    ) ;
  }
}