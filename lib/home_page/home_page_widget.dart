import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../nexttrip1_1/nexttrip11_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 200,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, -10),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.8, 0.95),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.location_history,
                            color: Color(0xE6FFFFFF),
                            size: 45,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.9),
                        child: Text(
                          'Guidee',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xE6FFFFFF),
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.8, -0.01),
                        child: Container(
                          width: 150,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: FlutterFlowTheme.of(context).primaryText,
                                offset: Offset(3, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -0.45),
                                child: Text(
                                  'My reviews',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.4),
                                child: Icon(
                                  Icons.star_rate,
                                  color: Color(0xFFEA9900),
                                  size: 25,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.4, 0.4),
                                child: Icon(
                                  Icons.star_rate,
                                  color: Color(0xFFEA9900),
                                  size: 25,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.4, 0.4),
                                child: Icon(
                                  Icons.star_rate,
                                  color: Color(0xFFEA9900),
                                  size: 25,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.8, 0.4),
                                child: Icon(
                                  Icons.star_rate,
                                  color: Color(0xFFEA9900),
                                  size: 25,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.8, 0.4),
                                child: Icon(
                                  Icons.star_outline,
                                  color: Color(0xFFEA9900),
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.8, 0.58),
                        child: Container(
                          width: 150,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: FlutterFlowTheme.of(context).primaryText,
                                offset: Offset(3, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -0.55),
                                child: Text(
                                  'Around me',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.5),
                                child: Image.asset(
                                  'assets/images/Pngtreered_map_location_location_icon_5494315.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.8, -0.6),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.topToBottom,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: Nexttrip11Widget(),
                              ),
                            );
                          },
                          child: Container(
                            width: 150,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  offset: Offset(3, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment:
                                AlignmentDirectional(0.050000000000000044, 0),
                            child: Align(
                              alignment: AlignmentDirectional(0, -0.05),
                              child: Text(
                                'Start a new Trip',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                          ),
                        ).animated([
                          animationsMap['containerOnActionTriggerAnimation']
                        ]),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.8, -0.63),
                        child: Container(
                          width: 150,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: FlutterFlowTheme.of(context).primaryText,
                                offset: Offset(3, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -0.45),
                                child: Text(
                                  'My Trip',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.55),
                                child: Icon(
                                  Icons.navigation,
                                  color: Color(0xD6DB1515),
                                  size: 45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.8, 0.45),
                        child: Container(
                          width: 150,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: FlutterFlowTheme.of(context).primaryText,
                                offset: Offset(3, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -0.05),
                            child: Text(
                              'More about Guidee',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.8, -0.11),
                        child: Container(
                          width: 150,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: FlutterFlowTheme.of(context).primaryText,
                                offset: Offset(3, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0.35),
                                child: Image.asset(
                                  'assets/images/Pngtreecity_map_location_3360238_(1).png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.45),
                                child: Text(
                                  'My last Trips',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.8, 0.95),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.settings,
                            color: Color(0xE6FFFFFF),
                            size: 45,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
