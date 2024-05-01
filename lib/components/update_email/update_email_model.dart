import '/flutter_flow/flutter_flow_util.dart';
import 'update_email_widget.dart' show UpdateEmailWidget;
import 'package:flutter/material.dart';

class UpdateEmailModel extends FlutterFlowModel<UpdateEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
