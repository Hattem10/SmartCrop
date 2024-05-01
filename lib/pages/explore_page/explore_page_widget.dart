import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'explore_page_model.dart';
export 'explore_page_model.dart';

class ExplorePageWidget extends StatefulWidget {
  const ExplorePageWidget({super.key});

  @override
  State<ExplorePageWidget> createState() => _ExplorePageWidgetState();
}

class _ExplorePageWidgetState extends State<ExplorePageWidget>
    with TickerProviderStateMixin {
  late ExplorePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplorePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ExplorePage'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
                child: Container(
                  width: 300.0,
                  height: 850.0,
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
                                    'EXPLORE_PAGE_PAGE_Image_ufba33b7_ON_TAP');
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
                                  borderRadius: BorderRadius.circular(16.0),
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
                            0.0, 260.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'i6m2txtu' /* Contact Us */,
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
                                    25.0, 57.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    't0niq3tt' /* Invite Friends */,
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
                                    25.0, 57.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'r095gd7t' /* Visit Website */,
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
                                    25.0, 57.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '1lxpz9zv' /* About App */,
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
                                    25.0, 57.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ira6ocdu' /* Settings */,
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
                                    25.0, 57.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'EXPLORE_PAGE_PAGE_Text_77iqtmlq_ON_TAP');
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
                                      '5o2tnh9n' /* Logout */,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/tree_top_left_2.png',
                                width: 170.0,
                                height: 160.0,
                                fit: BoxFit.contain,
                                alignment: const Alignment(-1.0, -1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/tree_bottom_right.png',
                                    width: 150.0,
                                    height: 150.0,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'EXPLORE_PAGE_PAGE_Icon_kmrk2jhm_ON_TAP');
                              logFirebaseEvent('Icon_drawer');
                              scaffoldKey.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 20.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/Logo.png',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        '$currentUserDisplayName, lets find your plants',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleLargeFamily),
                            ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('EXPLORE_Container_mtp2ziy5_ON_TAP');
                      logFirebaseEvent('Container_navigate_to');

                      context.pushNamed('Search');
                    },
                    child: Container(
                      width: 320.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'EXPLORE_SEARCH_PLANTS_HERE_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('Search');
                          },
                          text: FFLocalizations.of(context).getText(
                            '83cv3id3' /* Search plants here... */,
                          ),
                          icon: Icon(
                            Icons.search_sharp,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          options: FFButtonOptions(
                            width: 320.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 100.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Mulish',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Mulish'),
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(0.0, 0),
                          child: TabBar(
                            isScrollable: true,
                            labelColor: FlutterFlowTheme.of(context).secondary,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            labelStyle: GoogleFonts.getFont(
                              'Mulish',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                            unselectedLabelStyle: GoogleFonts.getFont(
                              'Mulish',
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                            ),
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'rskcich7' /* Recommended */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'hfau3rrp' /* Community picks */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  't9cmt22b' /* Tutorials */,
                                ),
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 360.0,
                                        height: 130.0,
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
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Stack(
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0x00F5F4F2),
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Beans.png',
                                                                  width: 102.0,
                                                                  height: 72.0,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.9),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'y1k2yofe' /* Beans */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Mulish'),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0x00F5F4F2),
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Carrots.png',
                                                                  width: 102.0,
                                                                  height: 72.0,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.9),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '0l5pw4yj' /* Carrots */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Mulish'),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0x00F5F4F2),
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Eggplants.png',
                                                                  width: 102.0,
                                                                  height: 72.0,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.9),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'tedmpebp' /* Eggplants */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Mulish'),
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
                                                alignment: const AlignmentDirectional(
                                                    0.9, -0.9),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yxcfo4p2' /* Show more */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            const Color(0x80000000),
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 360.0,
                                        height: 130.0,
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
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Stack(
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0x00F5F4F2),
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Peach.png',
                                                                  width: 102.0,
                                                                  height: 72.0,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.9),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '5w0893hn' /* Peach */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Mulish'),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0x00F5F4F2),
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Cherry.png',
                                                                  width: 102.0,
                                                                  height: 72.0,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.9),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'r69qvclq' /* Cherry */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Mulish'),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0x00F5F4F2),
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/Apricot.png',
                                                                  width: 102.0,
                                                                  height: 72.0,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.9),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'wuapp1qz' /* Apricot */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Mulish'),
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
                                                alignment: const AlignmentDirectional(
                                                    0.9, -0.9),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zg9o9moq' /* Show more */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            const Color(0x80000000),
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 20.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 80.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 360.0,
                                          height: 250.0,
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
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: Image.asset(
                                                    'assets/images/C1.png',
                                                    width: 240.0,
                                                    height: 190.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.5, 0.9),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'o4temysu' /* Chlorophytum */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.5, 0.9),
                                                child: RatingBar.builder(
                                                  onRatingUpdate: (newValue) =>
                                                      setState(() => _model
                                                              .ratingBarValue1 =
                                                          newValue),
                                                  itemBuilder:
                                                      (context, index) => const Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFFD700),
                                                  ),
                                                  direction: Axis.horizontal,
                                                  initialRating: _model
                                                      .ratingBarValue1 ??= 0.0,
                                                  unratedColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent3,
                                                  itemCount: 5,
                                                  itemSize: 18.0,
                                                  glowColor: const Color(0xFFFFD700),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 360.0,
                                          height: 250.0,
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
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: Image.asset(
                                                    'assets/images/Cherry.png',
                                                    width: 240.0,
                                                    height: 190.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.6, 0.9),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'u9qxajd2' /* Cherry */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.5, 0.9),
                                                child: RatingBar.builder(
                                                  onRatingUpdate: (newValue) =>
                                                      setState(() => _model
                                                              .ratingBarValue2 =
                                                          newValue),
                                                  itemBuilder:
                                                      (context, index) => const Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFFD700),
                                                  ),
                                                  direction: Axis.horizontal,
                                                  initialRating: _model
                                                      .ratingBarValue2 ??= 0.0,
                                                  unratedColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent3,
                                                  itemCount: 5,
                                                  itemSize: 18.0,
                                                  glowColor: const Color(0xFFFFD700),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 360.0,
                                          height: 250.0,
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
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: Image.asset(
                                                    'assets/images/Apricot.png',
                                                    width: 240.0,
                                                    height: 190.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.6, 0.9),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qfso43lu' /* Apricot */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.5, 0.9),
                                                child: RatingBar.builder(
                                                  onRatingUpdate: (newValue) =>
                                                      setState(() => _model
                                                              .ratingBarValue3 =
                                                          newValue),
                                                  itemBuilder:
                                                      (context, index) => const Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFFD700),
                                                  ),
                                                  direction: Axis.horizontal,
                                                  initialRating: _model
                                                      .ratingBarValue3 ??= 0.0,
                                                  unratedColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent3,
                                                  itemCount: 5,
                                                  itemSize: 18.0,
                                                  glowColor: const Color(0xFFFFD700),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 20.0)),
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 360.0,
                                      height: 250.0,
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
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=ATI7vfCgwXE',
                                                autoPlay: false,
                                                looping: true,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                                strictRelatedVideos: false,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.9),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'tte17ayw' /* Top 8 Easy To Grow Vegetables ... */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.getFont(
                                                  'Mulish',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0,
                                                ),
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
                      ],
                    ),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
