import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Home/ui/Widgets/workspace_bottomsheet.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/Colors.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    bool? checkedValue = false;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          automaticallyImplyLeading: false,
          title: Text("My Tasks"),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
              color: Color(0xFF0E0F12)),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return WorkSpaceBottomSheet();
                      });
                },
                icon: Image.asset(ImageAsset.WORKSPACE))
          ],
        ),
        body: DefaultTabController(
            length: 3,
            child: Column(children: [
              Row(children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelColor: Color(0xFF4E86F7),
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Color(0xFF4E86F7),
                    unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xFF4E86F7)),
                    isScrollable: true,
                    tabs: [
                      Tab(text: "In Progress"),
                      Tab(
                        text: "New",
                      ),
                      Tab(
                        text: "Completed",
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: 
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))), // Rounded Checkbox
                                  value: checkedValue,
                                  onChanged: (newValue){}),
                              Text("Add Task",style: TextStyle(color: Color(0xFFB5B5B5)),),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color: Color(0xFFC6D9FF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.lock,color: Color(0xFF0F47B8),size: 15),
                                      Text("Personal task",style: TextStyle(color:Color(0xFF0F47B8),fontSize: 12),),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.date_range,color: Color(0xFFD6D6D6)),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                      activeColor:Colors.grey,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),), // Rounded Checkbox
                                  value: true,
                                  onChanged: (newValue){}),
                              Column(
                                children: [
                                  Text("Design Native Task Management ",style: TextStyle(color: Colors.black),),
                                  Text("(New feature in Workiom) Similar ",style: TextStyle(color: Colors.black),),
                                  Text("to Asana, Clickup                         ",style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                height: 30,width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color: Color(0xFFC6D9FF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock,color: Color(0xFF0F47B8),size: 15),
                                        Text("Personal task",style: TextStyle(color:Color(0xFF0F47B8),fontSize: 12),),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text("Today ,5:00 PM",style: TextStyle(color:Colors.grey,fontSize: 12),),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor:Colors.grey,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),), // Rounded Checkbox
                                  value: true,
                                  onChanged: (newValue){}),
                              Column(
                                children: [
                                  Text("Design Native Task Management ",style: TextStyle(color: Colors.black),),
                                  Text("(New feature in Workiom) Similar ",style: TextStyle(color: Colors.black),),
                                  Text("to Asana, Clickup                         ",style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                height: 30,width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color: Color(0xFFC6D9FF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock,color: Color(0xFF0F47B8),size: 15),
                                        Text("Personal task",style: TextStyle(color:Color(0xFF0F47B8),fontSize: 12),),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text("Today ,5:00 PM",style: TextStyle(color:Colors.grey,fontSize: 12),),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor:Colors.grey,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),), // Rounded Checkbox
                                  value: true,
                                  onChanged: (newValue){}),
                              Column(
                                children: [
                                  Text("Design Native Task Management ",style: TextStyle(color: Colors.black),),
                                  Text("(New feature in Workiom) Similar ",style: TextStyle(color: Colors.black),),
                                  Text("to Asana, Clickup                         ",style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                height: 30,width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color: Color(0xFFC6D9FF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock,color: Color(0xFF0F47B8),size: 15),
                                        Text("Personal task",style: TextStyle(color:Color(0xFF0F47B8),fontSize: 12),),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text("Today ,5:00 PM",style: TextStyle(color:Colors.grey,fontSize: 12),),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),

            ])));
  }
}
