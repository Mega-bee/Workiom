import 'package:flutter/material.dart';

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
        titleTextStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset(ImageAsset.WORKSPACE))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: TextField(
                controller: _textEditingController,
                autofocus: false,
                onChanged: (searchText) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Jump to',
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
            
          ],
        ),
      ),
    );
  }
}
