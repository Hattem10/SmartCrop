import '/flutter_flow/flutter_flow_util.dart';
import 'success_page_widget.dart' show SuccessPageWidget;
import 'package:flutter/material.dart';

class SuccessPageModel extends FlutterFlowModel<SuccessPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
