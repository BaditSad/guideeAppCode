import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../nexttrip1_1/nexttrip11_widget.dart';
import '../nexttrip1_3/nexttrip13_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Nexttrip12Widget extends StatefulWidget {
  const Nexttrip12Widget({Key key}) : super(key: key);

  @override
  _Nexttrip12WidgetState createState() => _Nexttrip12WidgetState();
}

class _Nexttrip12WidgetState extends State<Nexttrip12Widget>
    with TickerProviderStateMixin {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'calendarOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
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
                  alignment: AlignmentDirectional(-0.9, -0.9),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Color(0xE6FFFFFF),
                      size: 25,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: Nexttrip11Widget(),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.05),
                  child: Container(
                    width: 365,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color(0xB3091249),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: FlutterFlowTheme.of(context).primaryText,
                          offset: Offset(3, 3),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation']]),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.05),
                  child: FlutterFlowCalendar(
                    color: Colors.white,
                    iconColor: Colors.white,
                    weekFormat: true,
                    weekStartsMonday: true,
                    onChange: (DateTimeRange newSelectedDate) {
                      setState(() => calendarSelectedDay = newSelectedDate);
                    },
                    titleStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    dayOfWeekStyle:
                        FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                    dateStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    selectedDateStyle: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                    inactiveDateStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ).animated([animationsMap['calendarOnPageLoadAnimation']]),
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
                          child: Nexttrip13Widget(),
                        ),
                      );
                    },
                    text: 'Next',
                    options: FFButtonOptions(
                      width: 130,
                      height: 50,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
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
                Align(
                  alignment: AlignmentDirectional(0, -0.35),
                  child: Text(
                    'Found your next memories !',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xE6FFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
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
