import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: SafeArea(
          top: true,
          child: Opacity(
            opacity: 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Image.asset(
                    'assets/images/logoilo.webp',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Register');
                  },
                  text: 'Register',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.white,
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Webmail');
                    },
                    text: 'Webmail',
                    options: FFButtonOptions(
                      width: 200.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
