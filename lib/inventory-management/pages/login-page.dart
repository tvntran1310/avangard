import 'package:flutter/material.dart';

import 'package:namer_app/inventory-management/pages/general.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* align center - column */
              // logo Thaco / image
              Center(
                child: Image(
                  image: AssetImage(
                    'lib/images/thaco/LOGO_INDUSTRIES.png',
                  ),
                  height: MediaQuery.of(context).size.width - 150,
                  width: MediaQuery.of(context).size.width - 150,
                  fit: BoxFit.contain,
                ),
              ),

              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'MNV/Email:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),

              // textfield email
              Container(
                alignment: Alignment.center,
                height: 50,
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập MNV/Email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 18,
                    ),
                  ),
                ),
              ),

              // textfield password
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Password:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              // textfield password
              Container(
                alignment: Alignment.center,
                height: 50,
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 30,
                ),
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 18,
                    ),
                  ),
                ),
              ),

              // button login
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => General(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    minimumSize: Size(350, 50),
                  ),
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}