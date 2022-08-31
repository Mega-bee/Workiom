import 'package:flutter/material.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Container(
          height: MediaQuery.of(context).size.height*0.3,
          child: Column(
            children: [
              Spacer(),
              Row(
                children: [
                  Text("Favorite",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,fontFamily: 'Rubik'),),
                  Spacer(),
                  TextButton(
                      onPressed: (){}, child: Text("View all",style: TextStyle(color: Color(0xFF747474),fontFamily: 'Rubik',fontSize: 14),))
                ],
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: false,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          )),
    );
  }
}
