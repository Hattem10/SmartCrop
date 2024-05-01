import '/flutter_flow/flutter_flow_util.dart';
import 'explore_page_widget.dart' show ExplorePageWidget;
import 'package:flutter/material.dart';

class ExplorePageModel extends FlutterFlowModel<ExplorePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
