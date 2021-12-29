import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'OTPcontrol.dart';
    class otpLogin extends StatefulWidget {
      const otpLogin({Key? key}) : super(key: key);
    
      @override
      _otpLoginState createState() => _otpLoginState();
    }
    
    class _otpLoginState extends State<otpLogin> {
  String dialCodeDigits="+00";
  TextEditingController _controller= TextEditingController();
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: Image.asset("/images/launch.png"),
            ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "phone OTP authenticaton",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                SizedBox(
                  height: 60,
                  width: 400,
                  child: CountryCodePicker(
                    onChanged: (country){
                      setState(() {
                        dialCodeDigits= country.dialCode!;
                      });
                    },
                    initialSelection: "IT",
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    favorite: ["+1","US","+92","PAK"],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10 , right:10 ,left:20 ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      prefix: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(dialCodeDigits),
                      )
                    ),
                    maxLength: 12,
                    keyboardType:TextInputType.number ,
                    controller: _controller,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (c)=> OTPcontroller(
                        phone: _controller.text,
                        codeDigits: dialCodeDigits,
                      )));
                    },
                    child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                )
              ],
            ),
          ),

        );
      }
    }
