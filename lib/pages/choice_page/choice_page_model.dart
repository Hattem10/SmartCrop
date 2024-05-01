import '/flutter_flow/flutter_flow_util.dart';
import 'choice_page_widget.dart' show ChoicePageWidget;
import 'package:flutter/material.dart';

class ChoicePageModel extends FlutterFlowModel<ChoicePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
