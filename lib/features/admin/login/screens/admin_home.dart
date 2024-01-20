import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/features/admin/login/contollers/auth_controller.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key, required this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Expanded(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text('Welcome Home $email'),
              SizedBox(width: 300,
                child: ElevatedButton(onPressed: (){
                  AuthController.instance.logout();
                }, 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Logout'),
                    Icon(Icons.logout)
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
