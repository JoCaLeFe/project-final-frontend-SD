import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'alumnos_widget.dart' show AlumnosWidget;
import 'package:flutter/material.dart';

class AlumnosModel extends FlutterFlowModel<AlumnosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (DeleteStudent)] action in IconButton widget.
  ApiCallResponse? deleteStudentOutput;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    paginatedDataTableController.dispose();
  }
}
