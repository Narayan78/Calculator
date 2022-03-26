// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
void main()
{
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: calculator(),

    );
  }
}
class calculator extends StatefulWidget {
  const calculator({ Key? key }) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
   TextEditingController name = TextEditingController();
   bool isresult = false;
   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC49686),
      appBar: AppBar(
        title: const Text("NRN Calculator"),
        backgroundColor: const Color(0xffC06B88),
      ),
      body: Column(
         // ignore: prefer_const_literals_to_create_immutables
         children: [
           const SizedBox(
             height: 15,
           ),
           
           Padding(
             padding: const EdgeInsets.all(20.0),
             child:  TextField(
               
               controller: name,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
              suffixIcon: Icon(Icons.calculate),
               ),
             ),
             
           ),
          
          if('$isresult'=="true")
          Text("Result =  "+ name.text, style: TextStyle(fontSize: 25),),
          if('$isresult'=="false")  
          SizedBox(height: 29,),  
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               children: [
                 Row(
                   children: [
                    
                    InkWell(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: Center(child: Text("+", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 21))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:39,
                        width: 82,
                      
                      ),
                    ),
                    onTap: (){
                      setState(() {
                          name.text = name.text + "+";
                        });
                    },
                    ),
                    InkWell(child: Container(
                      child: Center(child: Text("-", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 31))),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 81, 81),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      height:39,
                      width: 82,
                    
                    ),
                    onTap: (){
                      setState(() {
                          name.text = name.text + "-";
                        });
                    },
                    ),
                    InkWell(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: Center(child: Text("÷", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 21))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:39,
                        width: 82,
                      
                      ),
                    ),
                    onTap: (){
                      setState(() {
                          name.text = name.text + "/";
                        });
                    },
                    ),
                    InkWell(child: Container(
                      child: Center(child: Text("×", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 21))),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 81, 81),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      height:39,
                      width: 82,
                    
                    ),
                    onTap: (){
                      setState(() {
                          name.text = name.text + "*";
                        
                        });
                    },
                    )
                  
                   ],
                 ),
                  Row(
                    children: [
                      InkWell(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          child: Center(child: Text("X²", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 18))),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 81, 81),
                            borderRadius: BorderRadius.circular(7)
                          ),
                          height:39,
                          width: 82,
                        
                        ),
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "^2";
                          });
                      },
                      ),
                      InkWell(child: Container(
                        child: Center(child: Text("X³", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 18))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:39,
                        width: 82,
                      
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "^3";
                          });
                      },
                      ),
                      InkWell(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          child: Center(child: Text("√", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 21))),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 81, 81),
                            borderRadius: BorderRadius.circular(7)
                          ),
                          height:39,
                          width: 82,
                        
                        ),
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "√";
                          });
                      },
                      ),
                      InkWell(child: Container(
                        child: Center(child: Text("3√", style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 18))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:39,
                        width: 82,
                      
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "3√";
                          });
                      },
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          child: Center(child: Text("sin()", style: TextStyle(   fontSize: 21))),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 81, 81),
                            borderRadius: BorderRadius.circular(7)
                          ),
                          height:39,
                          width: 82,
                        
                        ),
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "Sin()";
                          });
                      },
                      ),
                      InkWell(child: Container(
                        child: Center(child: Text("Cos()", style: TextStyle(  fontSize: 21))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:39,
                        width: 82,
                      
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "Cos()";
                          });
                      },
                      ),
                      InkWell(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          child: Center(child: Text("Tan()", style: TextStyle(  fontSize: 21))),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 81, 81),
                            borderRadius: BorderRadius.circular(7)
                          ),
                          height:39,
                          width: 82,
                        
                        ),
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "Tan()";
                          });
                      },
                      ),
                      InkWell(child: Container(
                        child: Center(child: Text("Cot()", style: TextStyle(  fontSize: 21))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:39,
                        width: 82,
                      
                      ),
                      onTap: (){
                        setState(() {
                            name.text = name.text + "Cot()";
                          });
                      },
                      )
                    ],
                  ),
                  Row(children: [
                    InkWell(child: Container(
                        child: Center(child: Text("=", style: TextStyle(  fontSize: 21))),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 81, 81),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        height:45,
                        width: 120,
                      
                      ),
                      onTap: (){
                        setState(() {
                            isresult=!isresult;
                          });
                      },
                      )
                  ],)
               ],
               
             ),
           ),
           
         ],
      ),
    );
  }
}