import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class AcilisWidget extends StatefulWidget {
  AcilisWidget({
    Key key,
    this.tlf,
  }) : super(key: key);

  final String tlf;

  @override
  _AcilisWidgetState createState() => _AcilisWidgetState();
}

class _AcilisWidgetState extends State<AcilisWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFECF2F2),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.85,
          child: Stack(
            alignment: Alignment(0, 0),
            children: [
              Align(
                alignment: Alignment(0, -0.88),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  alignment: Alignment(0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                          reverseDuration: Duration(milliseconds: 0),
                          child: NavBarPage(initialPage: 'Anasayfa'),
                        ),
                      );
                    },
                    child: Image.network(
                      'https://pngimg.com/uploads/doctor/doctor_PNG15980.png',
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Uz.Dr.Kasım ÇETİN',
                                  style: FlutterFlowTheme.title3.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Enfeksiyon Hastalıkları',
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Aydın Kadın Doğum ve Çocuk Hastalıkları Hastanesi',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ÇokKolay2021',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
