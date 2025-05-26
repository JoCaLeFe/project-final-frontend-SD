import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'asignaturas_widget.dart' show AsignaturasWidget;
import 'package:flutter/material.dart';

class AsignaturasModel extends FlutterFlowModel<AsignaturasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (DeleteSubject)] action in IconButton widget.
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
