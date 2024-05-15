import '/flutter_flow/flutter_flow_util.dart';
import 'createtales_widget.dart' show CreatetalesWidget;
import 'package:flutter/material.dart';

class CreatetalesModel extends FlutterFlowModel<CreatetalesWidget> {
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
