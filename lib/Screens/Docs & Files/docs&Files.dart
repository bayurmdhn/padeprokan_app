import 'package:first_app_flutter/Components/appBar.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';

import '../../Utils/constants.dart';
import 'components/bodyDocsFiles.dart';

class docsFiles extends StatefulWidget {
  const docsFiles({Key? key}) : super(key: key);

  @override
  State<docsFiles> createState() => _docsFiles();
}

class _docsFiles extends State<docsFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: appBarClass(
            judul: 'Docs & FIles',
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          centerTitle: true),
      body: bodyDocsFiles(),
    );
  }
}
