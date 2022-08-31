import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/Home/ui/Widgets/Apps.dart';
import 'package:workiom/utils/style/Colors.dart';
import '../../../utils/Images/Images.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("T-Technology"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 32,
            color: Color(0xFF0E0F12)),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset(ImageAsset.WORKSPACE))
        ],
        bottom: PreferredSize(
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
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
                filled: true,
                fillColor: Color(0xFFF4F4F4),
                hintText: 'Jump to...',
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
      ),
      body: SingleChildScrollView(
    child:Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Column(
          children: [
            Card(
              elevation: 0,
                color: PrimaryColor,
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Favorite",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Rubik'),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(
                              color: Color(0xFF747474),
                              fontFamily: 'Rubik',
                              fontSize: 14,
                          ),
                        ))
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
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
            Apps()
            // Container(child: Apps(),)
          ],
        ),
      ),
    ));
  }
}
