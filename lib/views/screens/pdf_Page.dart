import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'Class_Page.dart';
Future generatPDF() async {
  final pdf = pw.Document();
  pw.TextStyle bigfonts = pw.TextStyle(
    fontSize: 40,
    fontWeight: pw.FontWeight.bold,
  );
  pw.TextStyle smallfonts = pw.TextStyle(
    fontSize: 25,
    fontWeight: pw.FontWeight.bold,
  );
  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context){
        return pw.Container(
          height: double.infinity,
          width: double.infinity,
          child: pw.Column(
            children: [
              pw.Row(
                children: [
                  pw.Text("Shopping",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 26,),
                  ),
                ],
              ),
              pw.SizedBox(height: 30),
              pw.Center(
                child: pw.Text("bill", style: bigfonts),
              ),
              pw.SizedBox(height: 30),
              pw.Divider(),
              pw.Row(
                mainAxisAlignment:
                pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Text("Product", style: smallfonts),
                  pw.SizedBox(width: 30),
                  pw.Text("Quantity", style: smallfonts),
                  pw.Text("Price", style: smallfonts),
                  pw.Text("Total", style: smallfonts),
                ],
              ),
              pw.Divider(),
              pw.Row(
                mainAxisAlignment:
                pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Column(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Text("${addcart[0].Name}", style:
                        smallfonts),
                        pw.Text("${addcart[1].Name}", style:
                        smallfonts),
                        pw.Text("${addcart[2].Name}", style:
                        smallfonts),
                        pw.Text("${addcart[3].Name}", style:
                        smallfonts),
                      ]
                  ),
                  pw.SizedBox(width: 16),
                  pw.Column(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Text("1", style: smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("1", style: smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("1", style: smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("1", style: smallfonts),
                      ]
                  ),
                  pw.SizedBox(width: 16),
                  pw.Column(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Text("${addcart[0].price}", style:
                        smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("${addcart[1].price}", style:
                        smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("${addcart[2].price}", style:
                        smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("${addcart[3].price}", style:
                        smallfonts),
                      ]
                  ),
                  pw.SizedBox(width: 16),
                  pw.Column(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Text("${addcart[0].price}", style:
                        smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("${addcart[1].price}", style:
                        smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("${addcart[2].price}", style:
                        smallfonts),
                        pw.SizedBox(height: 5),
                        pw.Text("${addcart[3].price}", style:
                        smallfonts),
                      ]
                  ),
                ],
              ),
              pw.Divider(),
              pw.Text("Total Amount :-💲 ${
                  int.parse(addcart[0].price)+
                      int.parse(addcart[1].price) +
                      int.parse(addcart[2].price) +
                      int.parse(addcart[3].price)
              } " , style: smallfonts),
              pw.Divider(),
              pw.SizedBox(height: 80),
              pw.Text("Thanks...!", style: smallfonts),
            ],
          ),
        );
      }
  ),
  );
  await Printing.layoutPdf(onLayout: (data) => pdf.save());
}
