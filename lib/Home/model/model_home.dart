import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/utils/Images/Images.dart';

class FavoriteModel{
  IconData favIcon;
  String title;
  String cathegory;
  Color color;
  FavoriteModel({required this.title,required this.cathegory,required this.favIcon,required this.color});
}
List <FavoriteModel> favList =[
  FavoriteModel(title: "Activation", cathegory: "Sales MGT", favIcon: Icons.calendar_month_sharp, color: Colors.orange),
  FavoriteModel(title: "Activation", cathegory: "Sales MGT", favIcon: Icons.calendar_month_sharp, color: Colors.orange),
  FavoriteModel(title: "Activation", cathegory: "Sales MGT", favIcon: Icons.calendar_month_sharp, color: Colors.orange),
  FavoriteModel(title: "Activation", cathegory: "Sales MGT", favIcon: Icons.calendar_month_sharp, color: Colors.orange),
  FavoriteModel(title: "Activation", cathegory: "Sales MGT", favIcon: Icons.calendar_month_sharp, color: Colors.orange),
  FavoriteModel(title: "Activation", cathegory: "Sales MGT", favIcon: Icons.calendar_month_sharp, color: Colors.orange),
];
class AppsRecentModel{
  Image img;
  String title;
  String text;
  AppsRecentModel({required this.title,required this.img,required this.text});
}
List <AppsRecentModel> appsRecentList =[
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),
  AppsRecentModel(title: "Activation",text: "There are numerous CRM tools available",img: Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,)),

];