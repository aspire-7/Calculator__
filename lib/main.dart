// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // Try running your application with "flutter run". You'll see the
// //         // application has a blue toolbar. Then, without quitting the app, try
// //         // changing the primarySwatch below to Colors.green and then invoke
// //         // "hot reload" (press "r" in the console where you ran "flutter run",
// //         // or simply save your changes to "hot reload" in a Flutter IDE).
// //         // Notice that the counter didn't reset back to zero; the application
// //         // is not restarted.
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});
// //
// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.
// //
// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".
// //
// //   final String title;
// //
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;
// //
// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           // Column is also a layout widget. It takes a list of children and
// //           // arranges them vertically. By default, it sizes itself to fit its
// //           // children horizontally, and tries to be as tall as its parent.
// //           //
// //           // Invoke "debug painting" (press "p" in the console, choose the
// //           // "Toggle Debug Paint" action from the Flutter Inspector in Android
// //           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
// //           // to see the wireframe for each widget.
// //           //
// //           // Column has various properties to control how it sizes itself and
// //           // how it positions its children. Here we use mainAxisAlignment to
// //           // center the children vertically; the main axis here is the vertical
// //           // axis because Columns are vertical (the cross axis would be
// //           // horizontal).
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Calculator(),
//     );
//   }
// }
// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }
//
// class _CalculatorState extends State<Calculator> {
//   dynamic displaytxt = 20;
//   //Button Widget
//   Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
//     return  Container(
//       child: RaisedButton(
//         onPressed: (){
//           calculation(btntxt);
//         },
//         child: Text('$btntxt',
//           style: TextStyle(
//             fontSize: 35,
//             color: txtcolor,
//           ),
//         ),
//         shape: CircleBorder(),
//         color: btncolor,
//         padding: EdgeInsets.all(20),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     //Calculator
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text('Calculator'),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 5),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             // Calculator display
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Text('$text',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 100,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('AC',Colors.grey,Colors.black),
//                 calcbutton('+/-',Colors.grey,Colors.black),
//                 calcbutton('%',Colors.grey,Colors.black),
//                 calcbutton('/',Colors.amber[700],Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('7',Colors.grey[850],Colors.white),
//                 calcbutton('8',Colors.grey[850],Colors.white),
//                 calcbutton('9',Colors.grey[850],Colors.white),
//                 calcbutton('x',Colors.amber[700],Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('4',Colors.grey[850],Colors.white),
//                 calcbutton('5',Colors.grey[850],Colors.white),
//                 calcbutton('6',Colors.grey[850],Colors.white),
//                 calcbutton('-',Colors.amber[700],Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('1',Colors.grey[850],Colors.white),
//                 calcbutton('2',Colors.grey[850],Colors.white),
//                 calcbutton('3',Colors.grey[850],Colors.white),
//                 calcbutton('+',Colors.amber[700],Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //this is button Zero
//                 RaisedButton(
//                   padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
//                   onPressed: (){
//                     calculation('0');
//                   },
//                   shape: StadiumBorder(),
//                   child: Text('0',
//                     style: TextStyle(
//                         fontSize: 35,
//                         color: Colors.white),
//                   ),
//                   color: Colors.grey[850],
//                 ),
//                 calcbutton('.',Colors.grey[850],Colors.white),
//                 calcbutton('=',Colors.amber[700],Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//           ],
//         ),
//       ),
//     );
//   }
//
//   //Calculator logic
//   dynamic text ='0';
//   double numOne = 0;
//   double numTwo = 0;
//
//   dynamic result = '';
//   dynamic finalResult = '';
//   dynamic opr = '';
//   dynamic preOpr = '';
//   void calculation(btnText) {
//
//
//     if(btnText  == 'AC') {
//       text ='0';
//       numOne = 0;
//       numTwo = 0;
//       result = '';
//       finalResult = '0';
//       opr = '';
//       preOpr = '';
//
//     } else if( opr == '=' && btnText == '=') {
//
//       if(preOpr == '+') {
//         finalResult = add();
//       } else if( preOpr == '-') {
//         finalResult = sub();
//       } else if( preOpr == 'x') {
//         finalResult = mul();
//       } else if( preOpr == '/') {
//         finalResult = div();
//       }
//
//     } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {
//
//       if(numOne == 0) {
//         numOne = double.parse(result);
//       } else {
//         numTwo = double.parse(result);
//       }
//
//       if(opr == '+') {
//         finalResult = add();
//       } else if( opr == '-') {
//         finalResult = sub();
//       } else if( opr == 'x') {
//         finalResult = mul();
//       } else if( opr == '/') {
//         finalResult = div();
//       }
//       preOpr = opr;
//       opr = btnText;
//       result = '';
//     }
//     else if(btnText == '%') {
//       result = numOne / 100;
//       finalResult = doesContainDecimal(result);
//     } else if(btnText == '.') {
//       if(!result.toString().contains('.')) {
//         result = result.toString()+'.';
//       }
//       finalResult = result;
//     }
//
//     else if(btnText == '+/-') {
//       result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
//       finalResult = result;
//
//     }
//
//     else {
//       result = result + btnText;
//       finalResult = result;
//     }
//
//
//     setState(() {
//       text = finalResult;
//     });
//
//   }
//
//
//   String add() {
//     result = (numOne + numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//
//   String sub() {
//     result = (numOne - numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//   String mul() {
//     result = (numOne * numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//   String div() {
//     result = (numOne / numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//
//
//   String doesContainDecimal(dynamic result) {
//
//     if(result.toString().contains('.')) {
//       List<String> splitDecimal = result.toString().split('.');
//       if(!(int.parse(splitDecimal[1]) > 0))
//         return result = splitDecimal[0].toString();
//     }
//     return result;
//   }
//
// }
// import 'lib.dart';
// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';
//
// void main(){
//   runApp(Calculator());
// }
//
// class Calculator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Calculator',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: SimpleCalculator(),
//     );
//   }
// }
//
// class SimpleCalculator extends StatefulWidget {
//   @override
//   _SimpleCalculatorState createState() => _SimpleCalculatorState();
// }
//
// class _SimpleCalculatorState extends State<SimpleCalculator> {
//
//   String equation = "0";
//   String result = "0";
//   String expression = "";
//   double equationFontSize = 38.0;
//   double resultFontSize = 48.0;
//
//
//   buttonPressed(String buttonText){
//     setState(() {
//       if(buttonText == "C"){
//         equation = "0";
//         result = "0";
//         equationFontSize = 38.0;
//         resultFontSize = 48.0;
//       }
//
//       else if(buttonText == "⌫"){
//         equationFontSize = 48.0;
//         resultFontSize = 38.0;
//         equation = equation.substring(0, equation.length - 1);
//         if(equation == ""){
//           equation = "0";
//         }
//       }
//
//       else if(buttonText == "="){
//         equationFontSize = 38.0;
//         resultFontSize = 48.0;
//
//         expression = equation;
//         expression = expression.replaceAll('×', '*');
//         expression = expression.replaceAll('÷', '/');
//
//         try{
//           Parser p = Parser();
//           Expression exp = p.parse(expression);
//
//           ContextModel cm = ContextModel();
//           result = '${exp.evaluate(EvaluationType.REAL, cm)}';
//         }catch(e){
//           result = "Error";
//         }
//
//       }
//
//       else{
//         equationFontSize = 48.0;
//         resultFontSize = 38.0;
//         if(equation == "0"){
//           equation = buttonText;
//         }else {
//           equation = equation + buttonText;
//         }
//       }
//     });
//   }
//
//   Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
//       color: buttonColor,
//       child: FlatButton(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(0.0),
//               side: BorderSide(
//                   color: Colors.white,
//                   width: 1,
//                   style: BorderStyle.solid
//               )
//           ),
//           padding: EdgeInsets.all(16.0),
//           onPressed: () => buttonPressed(buttonText),
//           child: Text(
//             buttonText,
//             style: TextStyle(
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.normal,
//                 color: Colors.white
//             ),
//           )
//       ),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Simple Calculator')),
//       body: Column(
//         children: <Widget>[
//
//
//           Container(
//             alignment: Alignment.centerRight,
//             padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
//             child: Text(equation, style: TextStyle(fontSize: equationFontSize),),
//           ),
//
//
//           Container(
//             alignment: Alignment.centerRight,
//             padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
//             child: Text(result, style: TextStyle(fontSize: resultFontSize),),
//           ),
//
//
//           Expanded(
//             child: Divider(),
//           ),
//
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: MediaQuery.of(context).size.width * .75,
//                 child: Table(
//                   children: [
//                     TableRow(
//                         children: [
//                           buildButton("C", 1, Colors.redAccent),
//                           buildButton("⌫", 1, Colors.blue),
//                           buildButton("÷", 1, Colors.blue),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton("7", 1, Colors.black54),
//                           buildButton("8", 1, Colors.black54),
//                           buildButton("9", 1, Colors.black54),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton("4", 1, Colors.black54),
//                           buildButton("5", 1, Colors.black54),
//                           buildButton("6", 1, Colors.black54),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton("1", 1, Colors.black54),
//                           buildButton("2", 1, Colors.black54),
//                           buildButton("3", 1, Colors.black54),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton(".", 1, Colors.black54),
//                           buildButton("0", 1, Colors.black54),
//                           buildButton("00", 1, Colors.black54),
//                         ]
//                     ),
//                   ],
//                 ),
//               ),
//
//
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.25,
//                 child: Table(
//                   children: [
//                     TableRow(
//                         children: [
//                           buildButton("×", 1, Colors.blue),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton("-", 1, Colors.blue),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton("+", 1, Colors.blue),
//                         ]
//                     ),
//
//                     TableRow(
//                         children: [
//                           buildButton("=", 2, Colors.redAccent),
//                         ]
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

// Array of button
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator By Somu"),
      ), //AppBar
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 18, color: Colors.white12),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.white10,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    // Clear Button
                    if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }

                    // +/- button
                    else if (index == 1) {
                      return MyButton(
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // % Button
                    else if (index == 2) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // Delete Button
                    else if (index == 3) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // Equal_to Button
                    else if (index == 18) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.orange[700],
                        textColor: Colors.white,
                      );
                    }

                    // other buttons
                    else {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.blueAccent
                            : Colors.white,
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.black,
                      );
                    }
                  }), // GridView.builder
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
