import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio/inicio_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController confirmPasswordTextController;
  bool passwordVisibility2;
  TextEditingController emailTextController;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    emailTextController = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F47),
        automaticallyImplyLeading: true,
        title: Text(
          'INICIO DE SESION',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFF4854F),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://raw.githubusercontent.com/HOLGUIN-HOLGUIN-AMERICA-IVONNE/Aprendiendo_GridNiew/master/assets/images/DEPOT9.jpg',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.network(
                          'https://realestatemarket.com.mx/images/2021/08-agosto/1708/Grande_home.jpg',
                          width: 100,
                          height: 170,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '¿Nuevo en la app?',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFD94040),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Text(
                            '¡Crea una cuenta y disfruta de muchos beneficios!',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD94040),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Color(0x00FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: textController1,
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController1',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Nombre',
                              hintText: 'Nombre',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              suffixIcon: textController1.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () => textController1?.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD94040),
                                    ),
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Color(0x00FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: textController2,
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController2',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Apellidos',
                              hintText: 'Apellidos',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              suffixIcon: textController2.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () => textController2?.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD94040),
                                    ),
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Color(0x00FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: emailTextController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'emailTextController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Correo electronico',
                              hintText: 'Correo electronico',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              suffixIcon: emailTextController.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () => emailTextController?.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD94040),
                                    ),
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Color(0x00FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: passwordTextController,
                            obscureText: !passwordVisibility1,
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              hintText: 'Contraseña',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility1 =
                                      !passwordVisibility1,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility1
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD94040),
                                    ),
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Color(0x00FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: confirmPasswordTextController,
                            obscureText: !passwordVisibility2,
                            decoration: InputDecoration(
                              labelText: 'Confirmar contraseña',
                              hintText: 'Confirmar contraseña',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD94040),
                                  width: 10,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility2 =
                                      !passwordVisibility2,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility2
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD94040),
                                    ),
                          ),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (passwordTextController?.text !=
                                  confirmPasswordTextController?.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Passwords don\'t match!',
                                    ),
                                  ),
                                );
                                return;
                              }

                              final user = await createAccountWithEmail(
                                context,
                                emailTextController.text,
                                passwordTextController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InicioWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Crear cuenta',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Color(0xFFD94040),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
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
