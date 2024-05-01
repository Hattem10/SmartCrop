import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => setState(() {}));
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
        drawer: SizedBox(
          width: 300.0,
          child: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF5F4F2),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/tree_top_left.png',
                              width: 130.0,
                              height: 846.0,
                              fit: BoxFit.contain,
                              alignment: const Alignment(-1.0, -1.0),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  25.0, 22.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Image_u3wmeha2_ON_TAP');
                                    logFirebaseEvent('Image_expand_image');
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            currentUserPhoto,
                                            fit: BoxFit.contain,
                                            alignment: const Alignment(0.0, 0.0),
                                          ),
                                          allowRotation: false,
                                          tag: currentUserPhoto,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: currentUserPhoto,
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.network(
                                        currentUserPhoto,
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.fill,
                                        alignment: const Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                25.0, 120.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                currentUserDisplayName,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Poppins'),
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 300.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '6dnkkysz' /* Contact Us */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'azmcwiez' /* Invite Friends */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '1k8461s2' /* FAQs */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '29v02i8o' /* About App */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '9u64482z' /* Settings */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Mulish'),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_Text_hfp1th8h_ON_TAP');
                                        logFirebaseEvent('Text_auth');
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        context.goNamedAuth(
                                            'SignUp', context.mounted);
                                      },
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'hx2g03m9' /* Logout */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mulish',
                                              color: Colors.black,
                                              fontSize: 25.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Mulish'),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 60.0)),
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
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.98, 1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
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
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 55.0,
                        height: 57.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/tree_top_left_2.png',
                      width: 170.0,
                      height: 163.0,
                      fit: BoxFit.contain,
                      alignment: const Alignment(-1.0, -1.0),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.65, -0.3),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'a2hgecjf' /* Your choices for plants */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Poppins'),
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: 145.0,
                    height: 135.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F4F2),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x7F000000),
                          offset: Offset(
                            0.0,
                            3.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFFF5F4F2),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 95.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'xwarasrg' /* Home */,
                      ),
                      style: GoogleFonts.getFont(
                        'Mulish',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.5),
                              child: Container(
                                width: 129.0,
                                height: 425.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF5F4F2),
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
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: const Color(0xFFF5F4F2),
                                  ),
                                ),
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Eggplants.png',
                                            width: 102.0,
                                            height: 72.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Carrots.png',
                                            width: 102.0,
                                            height: 72.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Beans.png',
                                            width: 102.0,
                                            height: 72.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.9),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ek1xdizd' /* Beans */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Mulish',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -0.5),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'dsx52gy8' /* Eggplants */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Mulish',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.2),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'pwbjqw6a' /* Carrots */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Mulish',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.0,
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.5),
                              child: Container(
                                width: 129.0,
                                height: 425.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF5F4F2),
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
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: const Color(0xFFF5F4F2),
                                  ),
                                ),
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Cherry.png',
                                            width: 102.0,
                                            height: 72.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Apricot.png',
                                            width: 102.0,
                                            height: 72.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Peach.png',
                                            width: 102.0,
                                            height: 72.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.9),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'a9h72krl' /* Peach */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Mulish',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -0.5),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '5r049smv' /* Cherry */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Mulish',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.2),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'qn9xhoew' /* Apricot */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Mulish',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.0,
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
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.7, -0.6),
                  child: AuthUserStreamWidget(
                    builder: (context) => Text(
                      'Hello, $currentUserDisplayName',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Poppins'),
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('HOME_PAGE_PAGE_Icon_4cge4tan_ON_TAP');
                        logFirebaseEvent('Icon_drawer');
                        scaffoldKey.currentState!.openDrawer();
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 32.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.5),
              child: Container(
                height: 36.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      offset: const Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  width: 320.0,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController',
                      const Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: false,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.search,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'hvdbjz8s' /* Search plants here... */,
                      ),
                      labelStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Mulish',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Mulish'),
                          ),
                      hintStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                      errorStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).error,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFBFD8AF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: (_model.textFieldFocusNode?.hasFocus ?? false)
                            ? const Color(0xFF87B187)
                            : const Color(0x80000000),
                        size: 24.0,
                      ),
                      suffixIcon: _model.textController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                _model.textController?.clear();
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.clear,
                                color: Color(0x7F000000),
                                size: 18.0,
                              ),
                            )
                          : null,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mulish',
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Mulish'),
                        ),
                    cursorColor: Colors.black,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
