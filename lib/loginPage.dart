//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/util/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState  extends State<LoginPage>{


bool changeButton=false;
  String name="";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/flutterlogo.png", fit:BoxFit.cover,),
            SizedBox(height: 20,),
            Center(
              child:Text('Login Page Welcome $name',
                style: TextStyle(fontSize: 30,
                    color:Colors.teal,
              fontWeight: FontWeight.w900),),
        
        
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
              child: Column(
                children: [
                  TextFormField(

                    decoration:InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Usename"
                    ),
                    onChanged: (value){
                      name=value;
                      setState(() {
                        changeButton=true;

                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
        
                    ),
                  ),
                  SizedBox(height: 20,),
                  Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(changeButton? 20:8),

                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () async {
                        setState(() {
                          changeButton=true;
                        });
                        await Future.delayed(Duration(seconds:3));
                        await Navigator.pushNamed(context, MyRoutes.homeRoutes);
                        setState(() {
                          changeButton = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton? 50:150,
                          height: 50,
                        //decoration:BoxDecoration(
                        //  color: Colors.purple,
                        //  shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                          //borderRadius: BorderRadius.circular(changeButton? 20:8),


                        //color: Colors.purple,
                        alignment: Alignment.center,
                        child: changeButton? Icon(
                          Icons.done,
                          color: Colors.white,)
                        :Text('Login', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900, color: Colors.white),),
                      ),
                    ),
                  ),
                  /*ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    print('Login done');
                  }, child: Text('Login'),
                    style: TextButton.styleFrom(
                      minimumSize: Size(100, 60),
                    ),
                  ),*/
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }




}