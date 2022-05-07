import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sign_in_user/sign_in_user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageStartOFFWidget extends StatefulWidget {
  const WelcomePageStartOFFWidget({Key key}) : super(key: key);

  @override
  _WelcomePageStartOFFWidgetState createState() =>
      _WelcomePageStartOFFWidgetState();
}

class _WelcomePageStartOFFWidgetState extends State<WelcomePageStartOFFWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 100),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0.45),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 120),
              child: Text(
                'The best Trip for you',
                style: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xD9FFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
              ).animated([animationsMap['textOnPageLoadAnimation']]),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.15),
            child: Text(
              'Welcome on Guidee',
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xE6FFFFFF),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
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
                    child: SignInUserWidget(),
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
