// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';

Future generateReportPDFb(dynamic jsonData) async {
  // Asegurarnos de poder manejar tanto Map como List
  final Map<String, dynamic> dataMap = (jsonData is List)
      ? Map<String, dynamic>.from(jsonData.first)
      : Map<String, dynamic>.from(jsonData);

  // Extraer datos de la API
  final subject = Map<String, dynamic>.from(
    dataMap['subject'] as Map<String, dynamic>,
  );
  final grades = List<Map<String, dynamic>>.from(
    dataMap['grades'] as List<dynamic>,
  );
  final average = dataMap['average'];

  // Formateador de fecha
  final dateFmt = DateFormat('dd/MM/yyyy');

  // Crear documento PDF
  final pdf = pw.Document(compress: false);

  pdf.addPage(
    pw.MultiPage(
      build: (pw.Context context) => [
        // — TÍTULO CENTRADO —
        pw.Center(
          child: pw.Text(
            'Calificaciones: ${subject['name']}',
            style: pw.TextStyle(
              fontSize: 24,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ),
        pw.SizedBox(height: 4),
        pw.Center(
          child: pw.Text(
            'Grado: ${subject['gradeLevel']}',
            style: pw.TextStyle(fontSize: 16),
          ),
        ),
        pw.SizedBox(height: 20),

        // — TABLA DE CALIFICACIONES POR ESTUDIANTE —
        pw.Text(
          'Listado de Estudiantes',
          style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
        ),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['Matrícula', 'Nombre', 'Fecha', 'Calificación'],
          data: grades.map((g) {
            final student = Map<String, dynamic>.from(g['student']);
            final date = DateTime.parse(g['date']);
            return [
              student['studentId'] as String,
              student['name'] as String,
              dateFmt.format(date),
              g['score'].toString(),
            ];
          }).toList(),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
          columnWidths: {
            0: const pw.FlexColumnWidth(1),
            1: const pw.FlexColumnWidth(2),
            2: const pw.FlexColumnWidth(1),
            3: const pw.FlexColumnWidth(1),
          },
          cellAlignments: {
            0: pw.Alignment.center,
            1: pw.Alignment.centerLeft,
            2: pw.Alignment.center,
            3: pw.Alignment.center,
          },
        ),
        pw.SizedBox(height: 20),

        // — PROMEDIO DE LA ASIGNATURA —
        pw.Center(
          child: pw.Text(
            'Promedio de la Asignatura: $average',
            style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
          ),
        ),
      ],
    ),
  );

  // Mostrar/Imprimir PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
