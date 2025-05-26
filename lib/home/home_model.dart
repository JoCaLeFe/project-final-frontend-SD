import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for MouseRegionAlumnos widget.
  bool mouseRegionAlumnosHovered1 = false;
  // State field(s) for MouseRegionAsignaturas widget.
  bool mouseRegionAsignaturasHovered1 = false;
  // State field(s) for MouseRegionAlumnos widget.
  bool mouseRegionAlumnosHovered2 = false;
  // State field(s) for MouseRegionAsignaturas widget.
  bool mouseRegionAsignaturasHovered2 = false;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
