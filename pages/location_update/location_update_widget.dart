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
import 'location_update_model.dart';
export 'location_update_model.dart';

class LocationUpdateWidget extends StatefulWidget {
  const LocationUpdateWidget({super.key});

  @override
  State<LocationUpdateWidget> createState() => _LocationUpdateWidgetState();
}

class _LocationUpdateWidgetState extends State<LocationUpdateWidget> {
  late LocationUpdateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationUpdateModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LocationUpdate'});
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
                      'efh9hmv7' /* Choose your region */,
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
                      child: AuthUserStreamWidget(
                        builder: (context) => FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(
                            _model.dropDownValue ??=
                                valueOrDefault(currentUserDocument?.region, ''),
                          ),
                          options: [
                            FFLocalizations.of(context).getText(
                              'sjpco4nj' /* Abha */,
                            ),
                            FFLocalizations.of(context).getText(
                              'glm56t3b' /* Al-Ahsa */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ycqcc63i' /* Al-Baha */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gr2nkhuh' /* Al-Jouf */,
                            ),
                            FFLocalizations.of(context).getText(
                              'pu7bon5a' /* Arar */,
                            ),
                            FFLocalizations.of(context).getText(
                              'w7mhf1p0' /* Bisha */,
                            ),
                            FFLocalizations.of(context).getText(
                              'sgvai9sm' /* Dammam */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0a5ov9b4' /* Guriat */,
                            ),
                            FFLocalizations.of(context).getText(
                              '1ilwj3hd' /* Hail */,
                            ),
                            FFLocalizations.of(context).getText(
                              '9oxy5l9p' /* Jeddah */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ydgydbzs' /* Jizan */,
                            ),
                            FFLocalizations.of(context).getText(
                              'd5i1xdud' /* Khamis Mushait */,
                            ),
                            FFLocalizations.of(context).getText(
                              'w76regqw' /* Madinah */,
                            ),
                            FFLocalizations.of(context).getText(
                              '2dirppff' /* Makkah */,
                            ),
                            FFLocalizations.of(context).getText(
                              'c438jick' /* Najran */,
                            ),
                            FFLocalizations.of(context).getText(
                              'hhhx04p2' /* Qaisumah */,
                            ),
                            FFLocalizations.of(context).getText(
                              'vghyjld2' /* Qassim */,
                            ),
                            FFLocalizations.of(context).getText(
                              'k2uc611t' /* Rafha */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ix4fbxy6' /* Riyadh */,
                            ),
                            FFLocalizations.of(context).getText(
                              'pd0t9qc7' /* Tabuk */,
                            ),
                            FFLocalizations.of(context).getText(
                              'oti4riox' /* Taif */,
                            ),
                            FFLocalizations.of(context).getText(
                              'b5f1a0xv' /* Turaif */,
                            ),
                            FFLocalizations.of(context).getText(
                              'yfb2hbl9' /* Wadi Aldawaser */,
                            ),
                            FFLocalizations.of(context).getText(
                              'z7le095a' /* Wejh */,
                            ),
                            FFLocalizations.of(context).getText(
                              'runhwnc4' /* Yenbo */,
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Mulish'),
                              ),
                          searchTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
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
                            '52b6ppc7' /* Please select your region */,
                          ),
                          searchHintText: FFLocalizations.of(context).getText(
                            'apeqf57u' /* Search for a region */,
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
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'LOCATION_UPDATE_PAGE_SAVE_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUserNamesRecordData(
                          region: _model.dropDownValue,
                        ));
                        logFirebaseEvent('Button_navigate_back');
                        context.safePop();
                      },
                      text: FFLocalizations.of(context).getText(
                        '770aj46q' /* Save */,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('LOCATION_UPDATE_Icon_6ujdffgk_ON_TAP');
                  logFirebaseEvent('Icon_navigate_back');
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
