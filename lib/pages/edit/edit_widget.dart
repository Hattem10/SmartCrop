import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/confirm_delete/confirm_delete_widget.dart';
import '/components/update_email/update_email_widget.dart';
import '/components/update_name/update_name_widget.dart';
import '/components/update_password/update_password_widget.dart';
import '/components/update_phone_number/update_phone_number_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'edit_model.dart';
export 'edit_model.dart';

class EditWidget extends StatefulWidget {
  const EditWidget({super.key});

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {
  late EditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Edit'});
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
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 100.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      currentUserPhoto,
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'EDIT_PAGE_Text_hfdh1qoa_ON_TAP');
                              logFirebaseEvent('Text_upload_media_to_firebase');
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                maxWidth: 100.00,
                                maxHeight: 100.00,
                                allowPhoto: true,
                                pickerFontFamily: 'Mulish',
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls = (await Future.wait(
                                    selectedMedia.map(
                                      (m) async => await uploadData(
                                          m.storagePath, m.bytes),
                                    ),
                                  ))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }

                              logFirebaseEvent('Text_backend_call');

                              await currentUserReference!
                                  .update(createUserNamesRecordData(
                                photoUrl: _model.uploadedFileUrl,
                              ));
                            },
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'q2ip80sq' /* Change Photo */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Mulish'),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 678.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/tree_bottom_right.png',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.contain,
                                alignment: const Alignment(1.0, 1.0),
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
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 300.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 0.0, 30.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('EDIT_PAGE_Row_i8oyqzlc_ON_TAP');
                            logFirebaseEvent('Row_bottom_sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const UpdateNameWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '094sfu33' /* Name */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Mulish'),
                                    ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 5.0)),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent('EDIT_PAGE_Row_vu6n41j5_ON_TAP');
                              logFirebaseEvent('Row_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const UpdateEmailWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'bkr44o7r' /* Email */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                ),
                                Text(
                                  currentUserEmail,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent('EDIT_PAGE_Row_pat0zbl3_ON_TAP');
                              logFirebaseEvent('Row_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const UpdatePasswordWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '572tolku' /* Password */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                ),
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault(
                                            currentUserDocument?.password, 0)
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Mulish',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Mulish'),
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent('EDIT_PAGE_Row_kzaq9rvk_ON_TAP');
                              logFirebaseEvent('Row_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const UpdatePhoneNumberWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'u7yw81gd' /* Phone number */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Mulish'),
                                      ),
                                ),
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    currentPhoneNumber,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Mulish',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Mulish'),
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'e6lmd3zz' /* Occupation */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Mulish'),
                                    ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => FlutterFlowChoiceChips(
                                    options: [
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'np5ugatm' /* Farmer */,
                                      )),
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'd5hnvhme' /* Gardener */,
                                      ))
                                    ],
                                    onChanged: (val) => setState(() => _model
                                        .oCChoiceValue = val?.firstOrNull),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                      iconColor: const Color(0x00000000),
                                      iconSize: 18.0,
                                      elevation: 3.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                      iconColor: const Color(0x00000000),
                                      iconSize: 18.0,
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    chipSpacing: 0.0,
                                    multiselect: false,
                                    initialized: _model.oCChoiceValue != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.oCChoiceValueController ??=
                                            FormFieldController<List<String>>(
                                      [
                                        valueOrDefault(
                                            currentUserDocument?.occupation, '')
                                      ],
                                    ),
                                    wrapped: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 0.0, 30.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'i4zvfxzw' /* Experience level */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Mulish'),
                                  ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => FlutterFlowChoiceChips(
                                    options: [
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'rrxcck14' /* Experienced */,
                                      )),
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'z0sqpana' /* Non-experienced */,
                                      ))
                                    ],
                                    onChanged: (val) => setState(() => _model
                                        .eXPChoiceValue = val?.firstOrNull),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                      iconColor: const Color(0x00000000),
                                      iconSize: 18.0,
                                      elevation: 3.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                      iconColor: const Color(0x00000000),
                                      iconSize: 18.0,
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    chipSpacing: 0.0,
                                    multiselect: false,
                                    initialized: _model.eXPChoiceValue != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.eXPChoiceValueController ??=
                                            FormFieldController<List<String>>(
                                      [
                                        valueOrDefault(
                                            currentUserDocument?.occupation, '')
                                      ],
                                    ),
                                    wrapped: false,
                                  ),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 5.0)),
                        ),
                      ),
                      const Divider(
                        thickness: 1.0,
                        indent: 30.0,
                        endIndent: 20.0,
                        color: Colors.black,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('EDIT_PAGE_SAVE_BTN_ON_TAP');
                          logFirebaseEvent('Button_backend_call');

                          await currentUserReference!
                              .update(createUserNamesRecordData(
                            occupation: _model.oCChoiceValue,
                            expLvl: _model.eXPChoiceValue,
                          ));
                          logFirebaseEvent('Button_navigate_back');
                          context.safePop();
                        },
                        text: FFLocalizations.of(context).getText(
                          'u7spupbi' /* Save */,
                        ),
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 35.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Mulish',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Mulish'),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'EDIT_PAGE_DELETE_ACCOUNT_BTN_ON_TAP');
                          logFirebaseEvent('Button_bottom_sheet');
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return WebViewAware(
                                child: GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const ConfirmDeleteWidget(),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        text: FFLocalizations.of(context).getText(
                          'nlyklbq2' /* Delete Account */,
                        ),
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 35.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFE6767),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Mulish',
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Mulish'),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 10.0))
                        .around(const SizedBox(height: 10.0)),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('EDIT_PAGE_Icon_xonhh7g2_ON_TAP');
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
            ],
          ),
        ),
      ),
    );
  }
}
