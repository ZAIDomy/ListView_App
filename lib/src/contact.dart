import 'package:flutter/material.dart';
import 'package:listview_app/src/model/contact_model.dart';
import 'package:listview_app/src/screens/contact_item.dart';

class Contact extends StatelessWidget {

  buildList(){
    return <ContactModel>[
      ContactModel(name: "Linus Tolvard", email: "linusT@flutter.com"),
      ContactModel(name: "Richard Stallman", email: "stallmanR@flutter.com"),
      ContactModel(name: "Bill Gates", email: "gatesB@flutter.com"),
      ContactModel(name: "Steve Wozniak", email: "woz@flutter.com"),
      ContactModel(name: "Dennis Ritchie", email: "dennisRit@flutter.com"),
      ContactModel(name: "Elon Musk", email: "elonM@flutter.com"),
      ContactModel(name: "Jeff Bezos", email: "jeffBez@flutter.com"),
      ContactModel(name: "Larry Page", email: "pageL@flutter.com"),
      ContactModel(name: "Sergey Brin", email: "brinserg@flutter.com"),
      ContactModel(name: "Mark Zuckerberg", email: "zuckerMark@flutter.com")

    ];
  }

  List<ContactItem> buildContactList(){
    return  buildList()
    .map<ContactItem>((contact)  =>  ContactItem(contact: contact,))
    .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contactos"),
      ),  
      body: ListView(
        children: buildContactList()
      ),   
    );
  }
}