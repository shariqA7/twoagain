import 'package:flutter/material.dart';
import 'package:two_again/enter_email.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}
  class _SigninScreenState extends State<SigninScreen>{
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool checkedValue = false;
    bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color(0xff000532),

        body: ListView(
          children: <Widget>[
            Container(

              color: Color(0xff000532),

              child: const Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                  size: 40,

                ),
              ),

            ),
        Column(
        children: <Widget>[

         const Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            10,50 , 0, 20),
                child: Text(
                  'Sign In Your Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )

        ),
            const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0,10 , 0, 10),
                child: Text(
                  'Enter Email',
                  style: TextStyle(
                      color: Colors.white,

                      fontSize: 20),
                )

            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(  borderSide: BorderSide(color: Colors.grey,width: 3),  borderRadius: BorderRadius.all(Radius.circular(100.0)), ),
                  hintText: 'User Name',hintStyle: TextStyle(color: Colors.grey[700],fontSize: 16 ),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    10,10 , 0, 10),
                child: Text(
                  'Enter Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),
                )

            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 3), borderRadius: BorderRadius.all(Radius.circular(100.0))),
                  hintText: 'Password',hintStyle: TextStyle(color: Colors.grey[700],fontSize: 16 ),
                ),
              ),
            ),

            FormField<bool>(
              builder: (state) {
                return Column(
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color(0xffb175ff),
                            side: BorderSide(color: Colors.white, width: 2),
                            value: checkboxValue,

                            onChanged: (value) {
                              setState(() {
                                checkboxValue = value!;
                                state.didChange(value);
                              });
                            }
                        ),
                        Text("Remember.", style: TextStyle(color: Colors.white,fontSize: 16),),
                        TextButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          child:  Text('Forgot Password?',textAlign: TextAlign.right,style: TextStyle(fontSize: 16,color:Colors.amberAccent[700])),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        state.errorText ?? '',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                      ),
                    )
                  ],
                );
              },
              validator: (value) {
                if (!checkboxValue) {
                  return 'You need to accept terms and conditions';
                }
                else {
                  return null;
                }
              },
            ),
            SizedBox(height: 20.0),

            Container(

                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(320, 40),
                    textStyle: const TextStyle(fontFamily: 'Poppins',
                        fontSize: 20,fontWeight: FontWeight.normal),
                    primary: Color(0xffb175ff),
                    onPrimary: Colors.black,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),

                  ),
                  child: const Text('Sign in',style: TextStyle(fontSize: 20,color:Colors.white)),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Are you new on 2 Again?',style: TextStyle(fontSize: 16,color:Colors.white)),
                TextButton(
                  child:  Text(
                    'Register',
                    style: TextStyle(fontSize: 16,color:Colors.amberAccent[700],
                      decoration:TextDecoration.underline,),
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                       return EmailScreen();
                     },
                      ),
                      );

                    //signup screen
                  },
                )
              ],
            ),
    ],
        ),
          ],
        ));
  }
}