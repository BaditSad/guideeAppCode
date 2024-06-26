import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAllModWidget extends StatefulWidget {
  const AddAllModWidget({Key key}) : super(key: key);

  @override
  _AddAllModWidgetState createState() => _AddAllModWidgetState();
}

class _AddAllModWidgetState extends State<AddAllModWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
