import 'package:flutter/material.dart';
import 'LovePage.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // 设置宽度为屏幕宽度
        height: double.infinity, // 设置高度为屏幕高度
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/background/background-1.jpg'), // 请将图片路径替换为你的图片路径
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/background/background-23.png")),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     '上面的文字',
            //     style: TextStyle(
            //       fontSize: 24,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            Container(
              width: 300,
              height: 55,
              child: TextField(
                controller: _passwordController,
                obscureText: false,
                style: TextStyle(
                  color: Colors.black, // 设置文字颜色
                  fontSize: 23.0, // 设置文字大小
                  fontWeight: FontWeight.bold, // 设置文字粗细
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor:
                      Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: '请输入我们的生日以探寻......',
                  hintStyle: TextStyle(
                    color: Colors.black, // 设置文字颜色
                    fontSize: 21.1, // 设置文字大小
                    fontWeight: FontWeight.bold, // 设置文字粗细
                  ),
                ),
                onSubmitted: (value) {
                  if (_passwordController.text == '040202' ||
                      _passwordController.text == '050220' ||
                      _passwordController.text == '20040202' ||
                      _passwordController.text == '20050220' ||
                      _passwordController.text == ' ') {
                    print("true");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LovePage()),
                    );
                  } else {
                    print("false");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
