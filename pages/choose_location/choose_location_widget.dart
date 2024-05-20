import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_location_model.dart';
export 'choose_location_model.dart';

class ChooseLocationWidget extends StatefulWidget {
  const ChooseLocationWidget({super.key});

  @override
  State<ChooseLocationWidget> createState() => _ChooseLocationWidgetState();
}

class _ChooseLocationWidgetState extends State<ChooseLocationWidget> {
  late ChooseLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseLocationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ChooseLocation'});
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
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
                              alignment: Alignment(-1.0, -1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                        ].divide(SizedBox(height: 200.0)),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 678.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(1.0, 1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/tree_bottom_right.png',
                                  width: 250.0,
                                  height: 250.0,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment(1.0, 1.0),
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
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'i9ksnh82' /* Choose your region */,
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displaySmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).displaySmallFamily),
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 300.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: [
                          FFLocalizations.of(context).getText(
                            's93ddiij' /* Abha */,
                          ),
                          FFLocalizations.of(context).getText(
                            '42glkybc' /* Al-Ahsa */,
                          ),
                          FFLocalizations.of(context).getText(
                            'wgky3ps8' /* Al-Baha */,
                          ),
                          FFLocalizations.of(context).getText(
                            '9fl07ymk' /* Al-Jouf */,
                          ),
                          FFLocalizations.of(context).getText(
                            'quez45zu' /* Arar */,
                          ),
                          FFLocalizations.of(context).getText(
                            'djhrayt8' /* Bisha */,
                          ),
                          FFLocalizations.of(context).getText(
                            '0m7dmgnh' /* Dammam */,
                          ),
                          FFLocalizations.of(context).getText(
                            '6lwqb1m3' /* Guriat */,
                          ),
                          FFLocalizations.of(context).getText(
                            'yut0gu87' /* Hail */,
                          ),
                          FFLocalizations.of(context).getText(
                            'p0uxruv5' /* Jeddah */,
                          ),
                          FFLocalizations.of(context).getText(
                            'l6ly380l' /* Jizan */,
                          ),
                          FFLocalizations.of(context).getText(
                            'x02xdfwy' /* Khamis Mushait */,
                          ),
                          FFLocalizations.of(context).getText(
                            '65w2elvo' /* Madinah */,
                          ),
                          FFLocalizations.of(context).getText(
                            'dm9snwh5' /* Makkah */,
                          ),
                          FFLocalizations.of(context).getText(
                            '7sqjhihq' /* Najran */,
                          ),
                          FFLocalizations.of(context).getText(
                            'egcrltal' /* Qaisumah */,
                          ),
                          FFLocalizations.of(context).getText(
                            'gxd2f524' /* Qassim */,
                          ),
                          FFLocalizations.of(context).getText(
                            'jlmf3nao' /* Rafha */,
                          ),
                          FFLocalizations.of(context).getText(
                            'a3ywi2o0' /* Riyadh */,
                          ),
                          FFLocalizations.of(context).getText(
                            '7tk5virb' /* Tabuk */,
                          ),
                          FFLocalizations.of(context).getText(
                            'dglnterc' /* Taif */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ofhj6b4h' /* Turaif */,
                          ),
                          FFLocalizations.of(context).getText(
                            'e3h7fixt' /* Wadi Aldawaser */,
                          ),
                          FFLocalizations.of(context).getText(
                            'd9f8hdgn' /* Wejh */,
                          ),
                          FFLocalizations.of(context).getText(
                            'j5lzwewi' /* Yenbo */,
                          )
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue = val),
                        width: 300.0,
                        height: 56.0,
                        searchHintTextStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Mulish',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Mulish'),
                            ),
                        searchTextStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Mulish',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Mulish'),
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'judtqehd' /* Please select your region */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'd77tz7g0' /* Search for a region */,
                        ),
                        searchCursorColor:
                            FlutterFlowTheme.of(context).primaryText,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderWidth: 1.0,
                        borderRadius: 10.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CHOOSE_LOCATION_PAGE_CONTINUE_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUserNamesRecordData(
                          region: _model.dropDownValue,
                        ));
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(
                          'Season',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'cij9hj9f' /* Continue */,
                      ),
                      options: FFButtonOptions(
                        width: 150.0,
                        height: 35.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
