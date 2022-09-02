// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:workiom/dashboard_pie/ui/screen/pie_screen.dart';
//
// import '../../../Home/ui/Widgets/workspace_bottomsheet.dart';
// import '../../../utils/Images/Images.dart';
// import '../../../utils/colors/colors.dart';
//
// class DashBoard extends StatefulWidget {
//   const DashBoard({Key? key}) : super(key: key);
//
//   @override
//   State<DashBoard> createState() => _DashBoardState();
// }
//
// class _DashBoardState extends State<DashBoard> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         automaticallyImplyLeading: false,
//
//         title: Text("DashBoard"),
//         titleTextStyle: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 32,
//             color: Color(0xFF0E0F12)),
//         elevation: 0,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 showModalBottomSheet<void>(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return WorkSpaceBottomSheet();
//                     });
//               },
//               icon: Image.asset(ImageAsset.WORKSPACE))
//         ],
//       ),
//       body: Column(children: [
//         InkWell(
//           onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PieScreen()));},
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//             child: Container(
//               height: 180,
//               child: Center(
//                 child: Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child:
//                     Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ListTile(
//                               leading: Container(
//                                 height: 120,width: 60,
//                                 child: Card(
//                                   shape: RoundedRectangleBorder(
//                                       side: BorderSide(color: Colors.yellow, width: 1),
//                                       borderRadius: BorderRadius.circular(10),),
//
//
//
//                                   child: Icon(Icons.check_box,color: Colors.yellow[600],)),),
//                               title:  Text("Tasks Progress",style: TextStyle(color: Colors.black),),
//                               subtitle: Text("Get summary for all tasks for specific users during a time period            "),
//                             ),
//
//                             // Row(
//                             //   children: [
//                             //     Container(child: Card(child: Icon(Icons.check,color: Colors.yellow,)),),
//                             //     Column(
//                             //       children: [
//                             //         Text("Design Native Task Management ",style: TextStyle(color: Colors.black),),
//                             //         Text("(New feature in Workiom) Similar ",style: TextStyle(color: Colors.black),),
//                             //         Text("to Asana, Clickup                         ",style: TextStyle(color: Colors.black),),
//                             //       ],
//                             //     ),
//                             //   ],
//                             // ),
//                             Divider(height: 20),
//                             SizedBox(height: 30,),
//
//                             Row(
//                               children: [
//                                 Container(
//
//
//
//                                   child: Padding(
//                                     padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
//                                     child: Center(
//                                       child: Row(
//                                         children: [
//
//                                           Text("Last modified by  ",style: TextStyle(color:Colors.grey,fontSize: 12),),
//                                           Text("Chris  ",style: TextStyle(color:Colors.black,fontSize: 12),),
//                                           Text("At 11:00 Pm",style: TextStyle(color:Colors.grey,fontSize: 12),),
//
//
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Spacer(),
//
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                 ),
//               ),
//             ),
//           ),
//         ),
//         InkWell(
//           onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PieScreen()));},
//
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//             child: Container(
//               height: 180,
//               child: Center(
//                 child: Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child:
//                     Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ListTile(
//                               leading: Container(
//                                 height: 120,width: 60,
//                                 child: Card(
//                                     shape: RoundedRectangleBorder(
//                                       side: BorderSide(color: Colors.blue, width: 1),
//                                       borderRadius: BorderRadius.circular(10),),
//
//
//
//                                     child: Icon(Icons.watch_later,color: Colors.blue[600],)),),
//                               title:  Text("Deals Summery",style: TextStyle(color: Colors.black),),
//                               subtitle: Text("Analyze lead and deal progression                       "),
//                             ),
//
//                             // Row(
//                             //   children: [
//                             //     Container(child: Card(child: Icon(Icons.check,color: Colors.yellow,)),),
//                             //     Column(
//                             //       children: [
//                             //         Text("Design Native Task Management ",style: TextStyle(color: Colors.black),),
//                             //         Text("(New feature in Workiom) Similar ",style: TextStyle(color: Colors.black),),
//                             //         Text("to Asana, Clickup                         ",style: TextStyle(color: Colors.black),),
//                             //       ],
//                             //     ),
//                             //   ],
//                             // ),
//                             Divider(height: 20),
//                             SizedBox(height: 30,),
//
//                             Row(
//                               children: [
//                                 Container(
//
//
//
//                                   child: Padding(
//                                     padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
//                                     child: Center(
//                                       child: Row(
//                                         children: [
//
//                                           Text("Last modified by  ",style: TextStyle(color:Colors.grey,fontSize: 12),),
//                                           Text("Chris  ",style: TextStyle(color:Colors.black,fontSize: 12),),
//                                           Text("At 11:00 Pm",style: TextStyle(color:Colors.grey,fontSize: 12),),
//
//
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Spacer(),
//
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],),
//     );
//   }
// }
