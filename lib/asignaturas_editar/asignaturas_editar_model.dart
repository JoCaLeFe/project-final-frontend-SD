import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'asignaturas_editar_widget.dart' show AsignaturasEditarWidget;
import 'package:flutter/material.dart';

class AsignaturasEditarModel extends FlutterFlowModel<AsignaturasEditarWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese un nombre';
    }

    return null;
  }

  // State field(s) for Grado widget.
  FocusNode? gradoFocusNode;
  TextEditingController? gradoTextController;
  String? Function(BuildContext, String?)? gradoTextControllerValidator;
  String? _gradoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese un grado';
    }

    if (val.length < 1) {
      return 'Ingrese un grado válido';
    }
    if (val.length > 1) {
      return 'Ingrese un grado válido';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (UpdateSubject)] action in Button widget.
  ApiCallResponse? actualizarAsignaturaOutput;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    nombreTextControllerValidator = _nombreTextControllerValidator;
    gradoTextControllerValidator = _gradoTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    gradoFocusNode?.dispose();
    gradoTextController?.dispose();
  }
}
