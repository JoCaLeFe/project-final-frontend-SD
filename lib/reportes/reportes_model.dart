import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'reportes_widget.dart' show ReportesWidget;
import 'package:flutter/material.dart';

class ReportesModel extends FlutterFlowModel<ReportesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for SeleccionarAlumno widget.
  String? seleccionarAlumnoValue;
  FormFieldController<String>? seleccionarAlumnoValueController;
  // Stores action output result for [Backend Call - API (StudentAcademicReport)] action in IconButton widget.
  ApiCallResponse? reporte1;
  // State field(s) for SeleccionarAsignatura widget.
  String? seleccionarAsignaturaValue;
  FormFieldController<String>? seleccionarAsignaturaValueController;
  // Stores action output result for [Backend Call - API (SubjectAcademicReport )] action in IconButton widget.
  ApiCallResponse? reporte2;
  // Stores action output result for [Backend Call - API (GetRegularStudents)] action in IconButton widget.
  ApiCallResponse? reporte3;
  // Stores action output result for [Backend Call - API (GetIrregularStudents)] action in IconButton widget.
  ApiCallResponse? reporte4;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
