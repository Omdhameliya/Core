import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../utils/GlobalVariable.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}
class _DeclarationPageState extends State<DeclarationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Declaration"),
        centerTitle: true,
        toolbarHeight: 120,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.picture_as_pdf),
            onPressed: () async{
            pw.Document pdf = pw.Document();

            pdf.addPage(
              pw.Page(
                pageFormat: PdfPageFormat.a4,
                build: (pw.Context context){
                  return pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                      pw.Center(
                        child: pw.Text("Hello Flutter",style: pw.TextStyle(
                          fontSize: 30,
                        ),),
                      ),
                    ],
                  );
                },
              )
            );
            await Printing.layoutPdf(onLayout: (format)async{
              return pdf.save();
            });
          }, ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(
            child: Text("Hello Flutter",style: TextStyle(
              fontSize: 30,
            ),),
          ),
        ],
      ),
    );
  }
}