import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF4854F),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
          child: Text(
            'INICIO',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Open Sans Condensed',
                  color: Colors.white,
                  fontSize: 20,
                ),
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            buttonSize: 60,
            icon: Icon(
              Icons.help_outline,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.09, 1.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageWidget(),
                        ),
                      );
                    },
                    text: 'INICIO',
                    options: FFButtonOptions(
                      width: 200,
                      height: 50,
                      color: Color(0xFFF4854F),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Open Sans Condensed',
                                color: Colors.white,
                                fontSize: 25,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Divider(),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Te damos la bienvenida a Home Depot',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: Colors.black,
                                    fontSize: 22,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFF23517C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://raw.githubusercontent.com/HOLGUIN-HOLGUIN-AMERICA-IVONNE/Aprendiendo_GridNiew/master/assets/images/DEPOT2.jpg',
                                    width: 700,
                                    height: 220,
                                    fit: BoxFit.cover,
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Ver herramientas',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Open Sans Condensed',
                                            color: Color(0xBAFFFFFF),
                                            fontSize: 20,
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xBAFFFFFF),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF4854F),
                                    dense: false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFF23517C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://raw.githubusercontent.com/HOLGUIN-HOLGUIN-AMERICA-IVONNE/Aprendiendo_GridNiew/master/assets/images/Logo%20Home%20Depot.png',
                                    width: 500,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Conoce mas de Home Depot',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Open Sans Condensed',
                                            color: Color(0xBAFFFFFF),
                                            fontSize: 20,
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xBAFFFFFF),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF4854F),
                                    dense: false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
