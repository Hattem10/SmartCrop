import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confirm_delete_model.dart';
export 'confirm_delete_model.dart';

class ConfirmDeleteWidget extends StatefulWidget {
  const ConfirmDeleteWidget({super.key});

  @override
  State<ConfirmDeleteWidget> createState() => _ConfirmDeleteWidgetState();
}

class _ConfirmDeleteWidgetState extends State<ConfirmDeleteWidget> {
  late ConfirmDeleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmDeleteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(
          sigmaX: 0.0,
          sigmaY: 0.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 700.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F4F2),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'kq5vfxom' /* Are you sure you want to delet... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'x2lke3gb' /* This action cannot be undone. */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Mulish',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Mulish'),
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'CONFIRM_DELETE_COMP_GO_BACK_BTN_ON_TAP');
                                  logFirebaseEvent('Button_bottom_sheet');
                                  Navigator.pop(context);
                                },
                                text: FFLocalizations.of(context).getText(
                                  'jmjayia7' /* Go Back */,
                                ),
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 50.0,
                                  padding: const EdgeInsets.all(24.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                  elevation: 1.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'CONFIRM_DELETE_DELETE_ACCOUNT_BTN_ON_TAP');
                                  logFirebaseEvent('Button_auth');
                                  await authManager.deleteUser(context);

                                  context.goNamedAuth(
                                      'HomePage', context.mounted);
                                },
                                text: FFLocalizations.of(context).getText(
                                  'z3cgkfro' /* Delete Account */,
                                ),
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 50.0,
                                  padding: const EdgeInsets.all(24.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFFE6767),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                  elevation: 1.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
