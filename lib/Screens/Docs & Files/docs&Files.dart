import 'package:first_app_flutter/Components/appBar.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';

import '../../Utils/constants.dart';
import 'components/bodyDocsFiles.dart';

class docsFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBarrDocs = AppBar(
      title: appBarClass(
        judul: 'Docs & file',
      ),
    );
    return Scaffold(
      appBar: appBarrDocs,
      body: bodyDocsFiles(),
    );
  }
}
