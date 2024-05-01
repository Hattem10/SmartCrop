import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'choice_page_model.dart';
export 'choice_page_model.dart';

class ChoicePageWidget extends StatefulWidget {
  const ChoicePageWidget({super.key});

  @override
  State<ChoicePageWidget> createState() => _ChoicePageWidgetState();
}

class _ChoicePageWidgetState extends State<ChoicePageWidget> {
  late ChoicePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoicePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ChoicePage'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF5F4F2),
        body: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/tree_top_left.png',
                              width: 130.0,
                              height: 315.0,
                              fit: BoxFit.cover,
                              alignment: const Alignment(-1.0, -1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 678.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(1.0, 1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/tree_bottom_right.png',
                                  width: 250.0,
                                  height: 250.0,
                                  fit: BoxFit.scaleDown,
                                  alignment: const Alignment(1.0, 1.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -0.2),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 22.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '9ol4wqwc' /* What type of user would you li... */,
                        ),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Mulish',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('CHOICE_PAGE_PAGE_FARMER_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUserNamesRecordData(
                          occupation: 'Farmer',
                        ));
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(
                          'SuccessPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'r1uny1wk' /* Farmer */,
                      ),
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Mulish',
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Mulish'),
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      showLoadingIndicator: false,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.2),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CHOICE_PAGE_PAGE_GARDENER_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUserNamesRecordData(
                          occupation: 'Gardener',
                        ));
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(
                          'SuccessPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        '4luwfpw8' /* Gardener */,
                      ),
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Mulish',
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Mulish'),
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      showLoadingIndicator: false,
                    ),
                  ),
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
