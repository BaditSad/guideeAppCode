import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmMailUserWidget extends StatefulWidget {
  const ConfirmMailUserWidget({Key key}) : super(key: key);

  @override
  _ConfirmMailUserWidgetState createState() => _ConfirmMailUserWidgetState();
}

class _ConfirmMailUserWidgetState extends State<ConfirmMailUserWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -0.15),
            child: Text(
              'Confirm your mail',
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xE6FFFFFF),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.55),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 210,
              icon: Icon(
                Icons.mail_outlined,
                color: Color(0xE6FFFFFF),
                size: 180,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.01, 0.41),
            child: FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: HomePageWidget(),
                  ),
                );
              },
              text: 'Next',
              options: FFButtonOptions(
                width: 130,
                height: 50,
                color: Colors.white,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 2,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
