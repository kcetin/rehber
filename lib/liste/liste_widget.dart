import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListeWidget extends StatefulWidget {
  ListeWidget({Key key}) : super(key: key);

  @override
  _ListeWidgetState createState() => _ListeWidgetState();
}

class _ListeWidgetState extends State<ListeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: FutureBuilder<dynamic>(
          future: hastaneCall(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            final gridViewHastaneResponse = snapshot.data;
            return Builder(
              builder: (context) {
                final veri =
                    (getJsonField(gridViewHastaneResponse, r'$.name') ?? [])
                        .take(30)
                        .toList();
                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.6,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: veri.length,
                  itemBuilder: (context, veriIndex) {
                    final veriItem = veri[veriIndex];
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: FutureBuilder<dynamic>(
                          future: hastaneCall(
                            name:
                                getJsonField(gridViewHastaneResponse, r'$.name')
                                    .toString(),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(child: CircularProgressIndicator());
                            }
                            final textHastaneResponse = snapshot.data;
                            return Text(
                              getJsonField(veriItem, r'$.name').toString(),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
