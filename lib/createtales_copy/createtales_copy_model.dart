import '/flutter_flow/flutter_flow_util.dart';
import 'createtales_copy_widget.dart' show CreatetalesCopyWidget;
import 'package:flutter/material.dart';

class CreatetalesCopyModel extends FlutterFlowModel<CreatetalesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
