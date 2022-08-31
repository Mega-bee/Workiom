import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/Home/model/model_home.dart';
import 'package:workiom/Home/ui/Widgets/Favorite.dart';

class FavBottomSheet extends StatefulWidget {
  const FavBottomSheet({Key? key}) : super(key: key);

  @override
  State<FavBottomSheet> createState() => _FavBottomSheetState();
}

class _FavBottomSheetState extends State<FavBottomSheet> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 6,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
                color: const Color(0xFFD6D6D6),


                borderRadius: BorderRadiusDirectional.circular(10)),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Row(children: [
                TextButton(
                    onPressed: () {},
                    child: Text("Cancel",
                        style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 14,
                            fontWeight: FontWeight.w400))),
                Spacer(),
                Text(
                  "My Workspaces",
                  style: TextStyle(
                      color: Color(0xFF0E0F12),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Spacer(flex: 2)
              ])),
          PreferredSize(
            preferredSize: Size(double.infinity, 60),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: TextField(
                controller: _textEditingController,
                autofocus: false,
                onChanged: (searchText) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                  filled: true,
                  fillColor: Color(0xFFF4F4F4),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search_rounded),
                  // suffixIcon: const ImageIcon(
                  //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
                  //   color: Color.fromRGBO(18, 108, 242, 1),
                  // ),
                  hintStyle: const TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Rubik'),
                ),
              ),
            ),
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: false,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: favList.length,
              itemBuilder: (context, index) {
                return Favorite(
                  favoriteModel: favList[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
