import '/flutter_flow/flutter_flow_util.dart';
import 'update_phone_number_widget.dart' show UpdatePhoneNumberWidget;
import 'package:flutter/material.dart';

class UpdatePhoneNumberModel extends FlutterFlowModel<UpdatePhoneNumberWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
