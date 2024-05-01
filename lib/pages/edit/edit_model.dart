import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_widget.dart' show EditWidget;
import 'package:flutter/material.dart';

class EditModel extends FlutterFlowModel<EditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for OCChoice widget.
  FormFieldController<List<String>>? oCChoiceValueController;
  String? get oCChoiceValue => oCChoiceValueController?.value?.firstOrNull;
  set oCChoiceValue(String? val) =>
      oCChoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for EXPChoice widget.
  FormFieldController<List<String>>? eXPChoiceValueController;
  String? get eXPChoiceValue => eXPChoiceValueController?.value?.firstOrNull;
  set eXPChoiceValue(String? val) =>
      eXPChoiceValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
