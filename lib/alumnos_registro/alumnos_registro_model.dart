import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'alumnos_registro_widget.dart' show AlumnosRegistroWidget;
import 'package:flutter/material.dart';

class AlumnosRegistroModel extends FlutterFlowModel<AlumnosRegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for Matricula widget.
  FocusNode? matriculaFocusNode;
  TextEditingController? matriculaTextController;
  String? Function(BuildContext, String?)? matriculaTextControllerValidator;
  String? _matriculaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese una matrícula';
    }

    if (val.length < 8) {
      return 'Ingrese una matrícula válida';
    }
    if (val.length > 8) {
      return 'Ingrese una matrícula válida';
    }

    return null;
  }

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

  // State field(s) for CorreoElectronico widget.
  FocusNode? correoElectronicoFocusNode;
  TextEditingController? correoElectronicoTextController;
  String? Function(BuildContext, String?)?
      correoElectronicoTextControllerValidator;
  String? _correoElectronicoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese un correo electrónico';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Ingrese un correo electrónico válido';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (CreateStudent)] action in Button widget.
  ApiCallResponse? registrarAlumnoOutput;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    matriculaTextControllerValidator = _matriculaTextControllerValidator;
    nombreTextControllerValidator = _nombreTextControllerValidator;
    gradoTextControllerValidator = _gradoTextControllerValidator;
    correoElectronicoTextControllerValidator =
        _correoElectronicoTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    matriculaFocusNode?.dispose();
    matriculaTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    gradoFocusNode?.dispose();
    gradoTextController?.dispose();

    correoElectronicoFocusNode?.dispose();
    correoElectronicoTextController?.dispose();
  }
}
