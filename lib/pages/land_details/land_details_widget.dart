import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'land_details_model.dart';
export 'land_details_model.dart';

class LandDetailsWidget extends StatefulWidget {
  const LandDetailsWidget({super.key});

  @override
  State<LandDetailsWidget> createState() => _LandDetailsWidgetState();
}

class _LandDetailsWidgetState extends State<LandDetailsWidget> {
  late LandDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandDetailsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'LandDetails'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/tree_top_left.png',
                width: 130.0,
                height: 846.0,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/tree_bottom_right.png',
                  width: 115.0,
                  height: 180.0,
                  fit: BoxFit.contain,
                  alignment: const Alignment(1.0, 1.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/Logo.png',
                    width: 128.0,
                    height: 145.0,
                    fit: BoxFit.contain,
                    alignment: const Alignment(0.0, -1.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 225.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '43yqdwxo' /* Land details */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: Colors.black,
                        fontSize: 36.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Mulish'),
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 300.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 320.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x80000000),
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: SizedBox(
                            width: 320.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0x80000000),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Inter'),
                                    ),
                                alignLabelWithHint: false,
                                hintText: FFLocalizations.of(context).getText(
                                  '4a0xjqd4' /* Size of land/planting space */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0x80000000),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Inter'),
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: const Color(0xFF458244),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Mulish'),
                                  ),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 320.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x80000000),
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          multiSelectController:
                              _model.dropDownValueController1 ??=
                                  FormFieldController<List<String>>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'je4zystu' /* Sandy */,
                            ),
                            FFLocalizations.of(context).getText(
                              'b1f5j98e' /* Slit */,
                            ),
                            FFLocalizations.of(context).getText(
                              'du7pd9si' /* Clay */,
                            ),
                            FFLocalizations.of(context).getText(
                              'opftn5fh' /* Loamy */,
                            )
                          ],
                          width: 320.0,
                          height: 45.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Inter',
                                color: const Color(0x80000000),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'k6aa4fpz' /* Soil Type */,
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF458244),
                            size: 24.0,
                          ),
                          fillColor: const Color(0xFFF5F4F2),
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 24.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 5.0, 16.0, 5.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: true,
                          onMultiSelectChanged: (val) =>
                              setState(() => _model.dropDownValue1 = val),
                        ),
                      ),
                    ),
                    Container(
                      width: 320.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x80000000),
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          multiSelectController:
                              _model.dropDownValueController2 ??=
                                  FormFieldController<List<String>>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'pdpdlik7' /* Summer */,
                            ),
                            FFLocalizations.of(context).getText(
                              'evyuuzqk' /* Spring */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ehjjcv2i' /* Autumn */,
                            ),
                            FFLocalizations.of(context).getText(
                              'kbl7h7dw' /* Winter */,
                            )
                          ],
                          width: 320.0,
                          height: 45.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Inter',
                                color: const Color(0x80000000),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'bi1ugi44' /* Season Preferences */,
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF458244),
                            size: 24.0,
                          ),
                          fillColor: const Color(0xFFF5F4F2),
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 24.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 5.0, 16.0, 5.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: true,
                          onMultiSelectChanged: (val) =>
                              setState(() => _model.dropDownValue2 = val),
                        ),
                      ),
                    ),
                    Container(
                      width: 320.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x80000000),
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController3 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'bozk4yak' /* 1 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ysj8le4r' /* 2 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'voyvh26x' /* 3 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue3 = val),
                          width: 320.0,
                          height: 45.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Inter',
                                color: const Color(0x80000000),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'naw9oov9' /* Sunlight Exposure */,
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF458244),
                            size: 24.0,
                          ),
                          fillColor: const Color(0xFFF5F4F2),
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 24.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'LAND_DETAILS_PAGE_CONFIRM_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!.update({
                          ...createUserNamesRecordData(
                            landSize:
                                double.tryParse(_model.textController.text),
                            sunlightExposure: _model.dropDownValue3,
                          ),
                          ...mapToFirestore(
                            {
                              'soil_type':
                                  (currentUserDocument?.soilType.toList() ??
                                      []),
                              'season':
                                  (currentUserDocument?.season.toList() ?? []),
                            },
                          ),
                        });
                      },
                      text: FFLocalizations.of(context).getText(
                        '8k3wqokf' /* Confirm */,
                      ),
                      options: FFButtonOptions(
                        width: 200.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF87B187),
                        textStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Mulish',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Mulish'),
                                ),
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ].divide(const SizedBox(height: 25.0)),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.92, -0.96),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('LAND_DETAILS_PAGE_Icon_2dfv55dr_ON_TAP');
                  logFirebaseEvent('Icon_navigate_back');
                  context.safePop();
                },
                child: const Icon(
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
