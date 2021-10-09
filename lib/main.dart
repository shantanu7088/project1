

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


void main() =>runApp(MaterialApp(
  home: Sample(),
));
class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("sample"),
      ),
      body: Stack(
        children: [
          Container(
            height: height * 0.36,
            width: width,
            color: Colors.transparent,
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.1,
              maxChildSize: 1.0,
              builder: (BuildContext context, myScrollController) {
                return ClipRRect(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(30.0)),
                  child: Container(
                    child: ListView(
                      //controller: myScrollController,
                      children: [
                        Container(
                            height: 800.0,

                            width: width,
                            color: Colors.deepOrange,
                            ),
                      ],
                    ),
                  ),
                );
              },

          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
              child:Column(
                  //margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Address',
                        hintStyle:TextStyle(color:Colors.deepPurpleAccent,fontWeight:FontWeight.bold),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white54, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    /* DropdownButton(
                       value: valueChoose,
                       onChanged:(newValue){
                         setState(()
                      {
                         valueChoose=newValue;
                      });
                       },
                       items:listitems.map(valueitems){
                         return DropDownMenuItem(
                         value: valueItem,
                         child:Text(valueItem),
                         );
                     }*/
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Food Category',
                        hintStyle:TextStyle(color:Colors.deepPurpleAccent,fontWeight:FontWeight.bold),

                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white54, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: CountryCodePicker(
                            initialSelection: 'IN',
                            textStyle:TextStyle(color:Colors.white54),
                            showCountryOnly:false,
                            favorite:['+91','IN'],
                            alignLeft:true,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone Number",
                              hintStyle: TextStyle(fontSize: 20.0, color: Colors.white54),
                            ),
                            onChanged: (value) {
                              // this.phoneNo=value;
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    /*Container(
                      child:IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      /*onChanged: (phone) {
                      print(phone.completeNumber);
                    },*/
                    ),
                    ),*/
                    SizedBox(height: 20.0),
                    Center(
                      child: FlatButton(
                        onPressed: () {},
                        child: const Text("Proceed", style: TextStyle(
                          color: Colors.white54,fontWeight:FontWeight.bold,
                        ),
                        ), color: Colors.purpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(height: 130.0),
                      Center(
                      child:Icon(
                      Icons.account_box_sharp,
                       color:Colors.white54,
                       size:60.0,
                      ),
                      ),
                    /*CountryCodePicker(
                           padding:EdgeInsets.all(10.0),
                             initialSelection: 'IN',
                             showCountryOnly:false,
                             favorite:['+91','IN'],
                             alignLeft:true,
                           ),*/
              ],
            ),
          ),
          /*ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image(
              image: AssetImage(
                  'image.jpg'),
            ),
          ),*/
        ],
      ),
    );
  }
}


                  /* DropdownButton(
                     value: valueChoose,
                     onChanged:(newValue){
                       setState(()
                    {
                       valueChoose=newValue;
                    });
                     },
                     items:listitems.map(valueitems){
                       return DropDownMenuItem(
                       value: valueItem,
                       child:Text(valueItem),
                       );
                   }*/

                   /*Row(
                     children:<Widget>[
                       CountryCodePicker(
                         initialSelection: 'IN',
                         showCountryOnly:false,
                         showOnlyCountryWhenClosed:false,
                         favorite: ['+91','IN'],
                       ),*/
                       /*Expanded(
                          child:IntlPhoneField(
                         decoration: InputDecoration(
                           labelText: 'Phone Number',
                           border: OutlineInputBorder(
                             borderSide: BorderSide(),
                           ),
                         ),
                         initialCountryCode: 'IN',
                         onChanged: (phone) {
                           print(phone.completeNumber);
                         },

                       ),
                       ),*/

/*class MyClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    var path=new Path();
    path.lineTo(0.0,size.height);
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)=>false;
}*/

