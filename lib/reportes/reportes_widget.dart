import '/backend/api_requests/api_calls.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reportes_model.dart';
export 'reportes_model.dart';

class ReportesWidget extends StatefulWidget {
  const ReportesWidget({super.key});

  static String routeName = 'Reportes';
  static String routePath = '/reportes';

  @override
  State<ReportesWidget> createState() => _ReportesWidgetState();
}

class _ReportesWidgetState extends State<ReportesWidget> {
  late ReportesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        wrapWithModel(
                          model: _model.headerModel,
                          updateCallback: () => safeSetState(() {}),
                          child: HeaderWidget(
                            selected: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 30.0, 30.0, 30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Boleta de Calificación con Promedio General',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: GetAllStudentsCall.call(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 49.0,
                                            height: 49.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0x004634C2),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final seleccionarAlumnoGetAllStudentsResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .seleccionarAlumnoValueController ??=
                                            FormFieldController<String>(null),
                                        options: List<String>.from(
                                            (getJsonField(
                                          seleccionarAlumnoGetAllStudentsResponse
                                              .jsonBody,
                                          r'''$[:].id''',
                                          true,
                                        ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
                                                .toList()),
                                        optionLabels: (getJsonField(
                                          seleccionarAlumnoGetAllStudentsResponse
                                              .jsonBody,
                                          r'''$[:].name''',
                                          true,
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.seleccionarAlumnoValue =
                                                val),
                                        width: 300.0,
                                        height: 49.0,
                                        searchHintTextStyle: FlutterFlowTheme
                                                .of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        searchTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        hintText: 'Seleccionar Alumno',
                                        searchHintText: 'Buscar...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: true,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 30.0,
                                    buttonSize: 120.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    disabledColor: Color(0x9A004479),
                                    icon: FaIcon(
                                      FontAwesomeIcons.filePdf,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 70.0,
                                    ),
                                    onPressed: (_model.seleccionarAlumnoValue ==
                                                null ||
                                            _model.seleccionarAlumnoValue == '')
                                        ? null
                                        : () async {
                                            _model.reporte1 =
                                                await StudentAcademicReportCall
                                                    .call(
                                              id: _model.seleccionarAlumnoValue,
                                            );

                                            if ((_model.reporte1?.succeeded ??
                                                true)) {
                                              await actions.generateReportPDFa(
                                                (_model.reporte1?.jsonBody ??
                                                    ''),
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Error',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                  ),
                                ].divide(SizedBox(height: 30.0)),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 2.0,
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 30.0, 30.0, 30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Lista de Calificaciones por Asignatura',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: GetAllSubjectsCall.call(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 49.0,
                                            height: 49.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0x004634C2),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final seleccionarAsignaturaGetAllSubjectsResponse =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .seleccionarAsignaturaValueController ??=
                                            FormFieldController<String>(null),
                                        options: List<String>.from(
                                            (getJsonField(
                                          seleccionarAsignaturaGetAllSubjectsResponse
                                              .jsonBody,
                                          r'''$[:].id''',
                                          true,
                                        ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
                                                .toList()),
                                        optionLabels: (getJsonField(
                                          seleccionarAsignaturaGetAllSubjectsResponse
                                              .jsonBody,
                                          r'''$[:].name''',
                                          true,
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.seleccionarAsignaturaValue =
                                                val),
                                        width: 300.0,
                                        height: 49.0,
                                        searchHintTextStyle: FlutterFlowTheme
                                                .of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        searchTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        hintText: 'Seleccionar Asignatura',
                                        searchHintText: 'Buscar...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: true,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 30.0,
                                    buttonSize: 120.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    disabledColor: Color(0x9A004479),
                                    icon: FaIcon(
                                      FontAwesomeIcons.filePdf,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 70.0,
                                    ),
                                    onPressed: (_model
                                                    .seleccionarAsignaturaValue ==
                                                null ||
                                            _model.seleccionarAsignaturaValue ==
                                                '')
                                        ? null
                                        : () async {
                                            _model.reporte2 =
                                                await SubjectAcademicReportCall
                                                    .call(
                                              id: _model
                                                  .seleccionarAsignaturaValue,
                                            );

                                            if ((_model.reporte2?.succeeded ??
                                                true)) {
                                              await actions.generateReportPDFb(
                                                (_model.reporte2?.jsonBody ??
                                                    ''),
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Error',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                  ),
                                ].divide(SizedBox(height: 30.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 2.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 30.0, 30.0, 30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Lista de Estudiantes Regulares',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 30.0,
                                    buttonSize: 120.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: FaIcon(
                                      FontAwesomeIcons.filePdf,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 70.0,
                                    ),
                                    onPressed: () async {
                                      _model.reporte3 =
                                          await GetRegularStudentsCall.call();

                                      if ((_model.reporte3?.succeeded ??
                                          true)) {
                                        await actions.generateReportPDFc(
                                          (_model.reporte3?.jsonBody ?? ''),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Error',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ].divide(SizedBox(height: 30.0)),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 2.0,
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 30.0, 30.0, 30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Lista de Estudiantes Irregulares',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 30.0,
                                    buttonSize: 120.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: FaIcon(
                                      FontAwesomeIcons.filePdf,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 70.0,
                                    ),
                                    onPressed: () async {
                                      _model.reporte4 =
                                          await GetIrregularStudentsCall.call();

                                      if ((_model.reporte4?.succeeded ??
                                          true)) {
                                        await actions.generateReportPDFd(
                                          (_model.reporte4?.jsonBody ?? ''),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Error',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ].divide(SizedBox(height: 30.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
