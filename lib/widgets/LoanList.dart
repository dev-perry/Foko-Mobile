import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foko/functions/database.dart';
import 'package:foko/widgets/LoanTile.dart';

class LoanList extends StatelessWidget {
  LoanList({this.nav});
  final Function nav;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: LoanDB().allLoans(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Color(0xFFF2C6AD8),
            ),
          );
        }
        final loans = snapshot.data.documents.reversed;
        List<LoanTile> loanList = [];
        for (var loan in loans) {
          final title = loan.data['title'];
          final desc = loan.data['desc'];
          final amount = loan.data['amount'];
          final installment = loan.data['installment'];
          final offer = loan.data['offer'];
          final uid = loan.data['lendee'];
          final id = loan.documentID;

          final loanTile = LoanTile(
            title: title,
            desc: desc,
            amount: amount,
            installment: installment,
            offer: offer,
            id: id,
            nav: nav,
            uid: uid,
          );

          loanList.add(loanTile);
        }
        return ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0,
          ),
          children: loanList,
        );
      },
    );
  }
}