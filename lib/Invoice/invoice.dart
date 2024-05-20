import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invoice Generator',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('pdf');
              },
                child: Icon(Icons.picture_as_pdf,size: 34,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            invoiceList.length,
                (index) =>
                ListTile(
                  title: Text(
                    '${invoiceList[index].name}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  trailing: Text('${invoiceList[index].price}',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500)),
                  subtitle: Text('${invoiceList[index].catagory}',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400)),
                ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoiceList.add(InvoiceModel(
                name: 'Asus Vivobook', price: '50000/-', catagory: 'Laptop'),);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List invoiceList = [
  InvoiceModel(name: 'Asus Vivobook', price: '50000/-', catagory: 'Laptop'),
  InvoiceModel(name: 'Tuf Gaming', price: '60000/-', catagory: 'Laptop'),
  InvoiceModel(name: 'Hp victus', price: '55000/-', catagory: 'Laptop'),
];

class InvoiceModel {
  String? name;
  String? price;
  String? catagory;

  InvoiceModel({this.name, this.price, this.catagory});
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (context) =>
      pw.Column(
        children: [
          ...List.generate(invoiceList.length, (index) =>
          pw.Container(
            height: 90,
            width: double.infinity,
            decoration: pw.BoxDecoration(
              color: PdfColors.grey,
            ),
            child: pw.Row(
              children: [
                pw.Column(
                  children: [
                    pw.Text('${invoiceList[index].name}',style: pw.TextStyle(color: PdfColors.white,fontSize: 30)),
                    pw.Text('${invoiceList[index].catagory}',style: pw.TextStyle(color: PdfColors.white,fontSize: 26),),
                  ],
                ),
                pw.Spacer(),
                pw.Text('${invoiceList[index].price}',style: pw.TextStyle(color: PdfColors.white,fontSize: 30)),
              ],
            )
          ),
          )
        ],
      ),
    ),
  );
  return pdf.save();
}