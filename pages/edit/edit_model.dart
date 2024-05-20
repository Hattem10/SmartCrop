import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/confirm_delete/confirm_delete_widget.dart';
import '/components/update_email/update_email_widget.dart';
import '/components/update_name/update_name_widget.dart';
import '/components/update_password/update_password_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_widget.dart' show EditWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
