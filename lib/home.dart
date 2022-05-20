
import 'package:flutter/material.dart';
import 'package:two_again/enter_email.dart';
import 'package:two_again/sign_in.dart';
import 'package:two_again/sign_up.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key,required this.title}): super(key:key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context){
     return Scaffold(
       backgroundColor:const Color(0xff000532),
       body: SafeArea(
         child: GestureDetector(
           onTap: () => FocusScope.of(context).unfocus(),
           child: Column(
             mainAxisSize: MainAxisSize.max,
             children: [
               InkWell(
                   child: Image.asset(
                     'assets/icon/again.png',
                     width: 380,
                     height: 300,
                     fit: BoxFit.cover,

                 ),
               ),
               const Text(
                 'Find Your Best Partner',
                 style: TextStyle(
                   fontFamily: 'Poppins',
                   color: Colors.white,
                 ),
               ),
               Expanded(
                 child: DefaultTabController(
                   length: 2,
                   initialIndex: 0,
                   child: Column(
                     children: [
                       const TabBar(
                         isScrollable: true,
                         labelColor: Color(0xFFB175FF),
                         labelStyle: TextStyle(),
                         indicatorColor: Color(0xFFB175FF),
                         tabs: [
                           Tab(
                             text: 'Sign In',
                           ),
                           Tab(
                             text: 'Sign Up',
                           ),
                         ],
                       ),
                       Expanded(
                         child: TabBarView(
                           children: [
                             Column(
                               mainAxisSize: MainAxisSize.max,
                               children: [
                                 Padding(
                                   padding: const EdgeInsetsDirectional.fromSTEB(
                                       50, 20, 50, 0),
                                   child: ElevatedButton(
                                     style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(320, 40),
                                       textStyle: const TextStyle(fontFamily: 'Poppins',
                                           fontSize: 20,fontWeight: FontWeight.normal),
                                       primary: Color(0xFFffc701),
                                       onPrimary: Colors.black,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),

                                     ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                                     children: const <Widget> [

                                       Icon(
                                       Icons.mail,
                                       color: Colors.black,
                                       size: 20,

                                     ),
                                    Text('Sign in with Email'),
                                     ],
                                    ),

                                     onPressed: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                         return SigninScreen();

                                       },
                                       ),
                                       );
                                     },

                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsetsDirectional.fromSTEB(
                                       50, 20, 50, 0),
                                   child: ElevatedButton(
                                     style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(320, 40),
                                       textStyle: const TextStyle(fontFamily: 'Poppins',
                                           fontSize: 20,fontWeight: FontWeight.normal),
                                       primary:Color(0xffb175ff),
                                       onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                                     ),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: const [
                                         Icon(
                                           Icons.phone,
                                           color: Colors.white,
                                           size: 20,
                                         ),
                                         Text('Sign in with Phone'),
                                       ],
                                     ),
                                     onPressed: () {
                                       print('Button pressed ...');
                                     },

                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsetsDirectional.fromSTEB(
                                       50, 20, 50, 0),
                                   child: ElevatedButton(
                                     style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(320, 40),
                                       textStyle: const TextStyle(fontFamily: 'Poppins',
                                           fontSize: 20,fontWeight: FontWeight.normal),
                                       primary: Color(0xff2c2c2e),
                                       onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                                     ),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: const [
                                         ImageIcon(
                                             AssetImage("assets/icon/apple.png"),
                                             size: 20,
                                         ),
                                         Text('Sign in with Apple'),
                                       ],
                                     ),

                                     onPressed: () {
                                       print('Button pressed ...');
                                     },

                                   ),
                                 ),
                             const Padding(
                               padding: EdgeInsetsDirectional.fromSTEB(
                                   0, 20, 0, 0),
                               child: Text(
                                 'Sign in with social',
                                 style:TextStyle(fontFamily: 'Poppins',color:Color(0xffffffff) ,
                                     fontSize: 16,fontWeight: FontWeight.normal),
                               ),
                             ),

                             Padding(
                               padding: const EdgeInsetsDirectional.fromSTEB(
                                   50, 20, 50, 0),
                               child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                   minimumSize: const Size(320, 40),
                                   textStyle: const TextStyle(fontFamily: 'Poppins',
                                       fontSize: 20,fontWeight: FontWeight.normal),
                                   primary: const Color(0xFF5077c8),
                                   onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: const [
                                     ImageIcon(
                                       AssetImage("assets/icon/face.png"),
                                       size: 25,
                                     ),
                                     Text('Sign in with Facebook'),
                                   ],
                                 ),

                                 onPressed: () {
                                   print('Button pressed ...');
                                 },

                               ),
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.fromSTEB(
                                   50, 20, 50, 0),
                               child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                   minimumSize: const Size(320, 40),
                                   textStyle: const TextStyle(fontFamily: 'Poppins',
                                       fontSize: 20,fontWeight: FontWeight.normal),
                                   primary: const Color(0xFFdb4437),
                                   onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: const [
                                     ImageIcon(
                                       AssetImage("assets/icon/google.png"),
                                       size: 25,
                                     ),
                                     Text('Sign in with Google'),
                                   ],
                                 ),

                                 onPressed: () {
                                   print('Button pressed ...');
                                 },

                               ),
                             ),
                               ],

                             ),
                             Column(
                               mainAxisSize: MainAxisSize.max,
                               children: [

                                     Padding(
                                       padding: const EdgeInsetsDirectional.fromSTEB(
                                           50, 20, 50, 0),
                                       child: ElevatedButton(
                                         style: ElevatedButton.styleFrom(
                                           minimumSize: const Size(320, 40),
                                           textStyle: const TextStyle(fontFamily: 'Poppins',
                                               fontSize: 20,fontWeight: FontWeight.normal),
                                           primary: Color(0xFFffc701),
                                           onPrimary: Colors.black,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                                         ),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: const [
                                             Icon(
                                               Icons.mail,
                                               color: Colors.black,
                                               size: 20,
                                             ),
                                             Text('Sign in with Email'),
                                           ],
                                         ),

                                         onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                             return EmailScreen();
                                           },
                                            ),
                                          );
                                         },

                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsetsDirectional.fromSTEB(
                                           50, 20, 50, 0),
                                       child: ElevatedButton(
                                         style: ElevatedButton.styleFrom(
                                           minimumSize: const Size(320, 40),
                                           textStyle: const TextStyle(fontFamily: 'Poppins',
                                               fontSize: 20,fontWeight: FontWeight.normal),
                                           primary: Color(0xffb175ff),
                                           onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                                         ),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: const [
                                             Icon(
                                               Icons.phone,
                                               color: Colors.white,
                                               size: 20,
                                             ),
                                             Text('Sign in with Phone'),
                                           ],
                                         ),
                                         onPressed: () {
                                           print('Button pressed ...');
                                         },

                                       ),
                                     ),
                                     const Padding(
                                       padding: EdgeInsetsDirectional.fromSTEB(
                                           0, 20, 0, 10),
                                       child: Text(
                                         'By Sign up you agree to 2again:',
                                         style:TextStyle(fontFamily: 'Poppins',color:Color(0xffffffff),
                                             fontSize: 16,fontWeight: FontWeight.normal),
                                       ),
                                     ),
                                 Row(
                                   mainAxisSize: MainAxisSize.max,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: const [
                                     Padding(
                                       padding: EdgeInsetsDirectional.fromSTEB(
                                           0, 0, 2, 0),
                                       child: Text(
                                         'Terms of User ',
                                         style:TextStyle(fontFamily: 'Poppins',color:Color(0xffb175ff),
                                           fontSize: 16,fontWeight: FontWeight.normal,
                                           decoration:
                                           TextDecoration.underline,),
                                       ),
                                     ),
                                     Text(
                                       '&',
                                       style:TextStyle(fontFamily: 'Poppins',color:Color(0xffb175ff),
                                           fontSize: 16,fontWeight: FontWeight.normal,),
                                     ),
                                     Padding(
                                       padding: EdgeInsetsDirectional.fromSTEB(
                                           2, 0, 0, 0),
                                       child: Text(
                                         'Privacy Policy ',
                                         style:TextStyle(fontFamily: 'Poppins',color:Color(0xffb175ff),
                                           fontSize: 16,fontWeight: FontWeight.normal,
                                           decoration:
                                           TextDecoration.underline,),
                                       ),
                                     ),
                                   ],
                                 ),
                               ],
                             ),

                           ],

                         ),
                       ),
                     ],
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