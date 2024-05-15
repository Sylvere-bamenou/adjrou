import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'record_widget.dart' show RecordWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class RecordModel extends FlutterFlowModel<RecordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  AudioRecorder? audioRecorder;
  String? recordedOce;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - API (createTranscription)] action in Button widget.
  ApiCallResponse? apiResultalh;
  // Stores action output result for [Backend Call - API (createImage)] action in Button widget.
  ApiCallResponse? image;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Button widget.
  ApiCallResponse? titre;
  // Stores action output result for [Backend Call - API (translate tales in yoruba)] action in Button widget.
  ApiCallResponse? talesyoruba;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
