import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'calificaciones_editar_widget.dart' show CalificacionesEditarWidget;
import 'package:flutter/material.dart';

class CalificacionesEditarModel
    extends FlutterFlowModel<CalificacionesEditarWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for DropDownAlumnos widget.
  String? dropDownAlumnosValue;
  FormFieldController<String>? dropDownAlumnosValueController;
  // State field(s) for DropDownAsignaturas widget.
  String? dropDownAsignaturasValue;
  FormFieldController<String>? dropDownAsignaturasValueController;
  // State field(s) for Calificacion widget.
  FocusNode? calificacionFocusNode;
  TextEditingController? calificacionTextController;
  String? Function(BuildContext, String?)? calificacionTextControllerValidator;
  String? _calificacionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese una calificación';
    }

    if (!RegExp('^(100|[1-9][0-9]?)\$').hasMatch(val)) {
      return 'Ingrese una calificación válida';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (UpdateGrade)] action in Button widget.
  ApiCallResponse? editarCalificacionOutput;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    calificacionTextControllerValidator = _calificacionTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    calificacionFocusNode?.dispose();
    calificacionTextController?.dispose();
  }
}
