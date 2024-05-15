import '/flutter_flow/flutter_flow_util.dart';
import 'motdepassoublie_widget.dart' show MotdepassoublieWidget;
import 'package:flutter/material.dart';

class MotdepassoublieModel extends FlutterFlowModel<MotdepassoublieWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
