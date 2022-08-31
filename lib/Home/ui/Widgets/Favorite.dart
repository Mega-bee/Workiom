import 'package:flutter/material.dart';
import 'package:workiom/Home/model/model_home.dart';
class Favorite extends StatelessWidget {
  FavoriteModel favoriteModel;

  Favorite({Key? key, required this.favoriteModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.05,
        child: Row(
          children: [
            Icon(favoriteModel.favIcon,color:Color(0xFF555555) ),
            Text("  ${favoriteModel.title}",style: TextStyle(color: Color(0xFF555555),fontSize: 16),),
            Spacer(),
            Text("● ", style: TextStyle(color: favoriteModel.color),),
            Text(favoriteModel.cathegory,style: TextStyle(color: Color(0xFF555555),fontSize: 12),)
          ],
        ),
      ),
    );
  }
}