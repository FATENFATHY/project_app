import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var Passwordcontroller = TextEditingController();

  @override.
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text ('Login',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(

                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: Passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'password',
                    prefixIcon: Icon(Icons.lock
                    ),
                    suffixIcon: Icon(
                        Icons.remove_red_eye
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: () {
                    print(emailcontroller.text);
                    print(Passwordcontroller.text);
                  },
                    child:
                    const Text('LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(onPressed: () {}, child: const Text(
                      'Register Now',
                    ),),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}