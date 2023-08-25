// import 'dart:html';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'inventory-management/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App',
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

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
                  bottom: 30,
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

              // textfield email
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
                        builder: (context) => HomePage(),
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


/* issue
1. Vấn padding của tk textfield có rồi nhưng nó ko thay đổi là do padding sai hướng -> left, right chứ kp là top, bottom
2. Row đang sử dụng sai mục đích -> Nó thường thường sẽ có thuộc tính là children nên là phải khi nào chứa 2 tk trở lên mới bọc nó lại
  -> Hiện tại t chỉ có cái Text thôi mà m bọc ngoài nó cái Row thì hơi ko cần thiết
  -> Thường là t sẽ coi cái title đó là 1 component nên cấu trúc t sẽ làm là:
    |_ Padding (mục đích bọc tk nào ngoài cùng là để align title vs input cho đồng bộ chứ ko cần phải padding lắc nhắc)
      |_Row
        |_ Text(title: MNV/Email)
        |_ TextInput
  -> Theo cấu trúc này thì m cx sẽ thấy có những thứ lặp lại như này sẽ dễ cho việc tách components hơn
3. Tuỳ vào UI họ cung cấp nhưng mà t thấy khoảng cách trái phải của cái nút nên bằng với TextInput luôn
4. Màu placeholder nên nhạc lại 
5. Khoảng cách top/bottom giữa các component tổng thể toàn màn hình chưa ổn (Cái này chắc là do chưa làm xong nên mới vậy, nào xong hết thì nhớ handle case này nha)
*/
