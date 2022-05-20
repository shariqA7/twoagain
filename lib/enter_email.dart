import 'package:flutter/material.dart';


class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}
class _EmailScreenState extends State<EmailScreen> {
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff000532),
       body:Container(
         child:ListView(

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

         const Padding(
           padding: EdgeInsetsDirectional.fromSTEB(
               10,80 , 0, 20),
           child:  Align(
             alignment: Alignment.center,
           child: Text('Enter Your Email',style:TextStyle(fontFamily: 'Poppins',color:Colors.white ,
                fontSize:30,fontWeight: FontWeight.normal,),),
         ),
         ),
      Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  10,100 , 0, 20),
              child:  TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey )),

                  hintText:  'Emaile@gmail.com',hintStyle:  TextStyle(color: Colors.grey[400],fontSize: 20,)),
              ),

            ),
            SizedBox(height: 30.0),
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
                  child: const Text('Continue',style: TextStyle(fontSize: 20,color:Colors.white)),
                  onPressed: () {

                  },
                )
            ),


         ],
         ),
         ),
      ],
    ),
    ),
    );

  }
}