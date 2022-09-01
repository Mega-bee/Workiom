import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/ChooseYourWorkSpace/models/workiom_account_model.dart';

class WorkiomAccountCard extends StatelessWidget {
  WorkiomAccount workiomAccount;


  WorkiomAccountCard(this.workiomAccount);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('${workiomAccount.image}'),
                width: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    '${workiomAccount.name}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    '${workiomAccount.email}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
