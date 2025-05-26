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

Future generateReportPDFd(dynamic jsonData) async {
  // Asegurarnos de manejar tanto List como Map
  final List<Map<String, dynamic>> gradeGroups = (jsonData is List)
      ? List<Map<String, dynamic>>.from(jsonData)
      : [Map<String, dynamic>.from(jsonData)];

  // Crear documento PDF
  final pdf = pw.Document(compress: false);

  pdf.addPage(
    pw.MultiPage(
      build: (pw.Context context) => [
        // — TÍTULO CENTRADO —
        pw.Center(
          child: pw.Text(
            'Lista de Estudiantes Irregulares',
            style: pw.TextStyle(
              fontSize: 24,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ),
        pw.SizedBox(height: 20),

        // — PARA CADA GRUPO DE GRADO —
        for (final group in gradeGroups) ...[
          // Encabezado de grado
          pw.Text(
            'Grado: ${group['gradeLevel']}',
            style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 10),

          // Tabla de estudiantes irregulares
          pw.Table.fromTextArray(
            border: pw.TableBorder.all(),
            headers: ['Matrícula', 'Nombre', 'Email', 'Reprobadas'],
            data: (group['students'] as List<dynamic>).map((entry) {
              final studentMap = Map<String, dynamic>.from(entry['student']);
              final failCount = entry['failingSubjectsCount'];
              return [
                studentMap['studentId'] as String,
                studentMap['name'] as String,
                studentMap['email'] as String,
                failCount.toString(),
              ];
            }).toList(),
            headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
            columnWidths: {
              0: const pw.FlexColumnWidth(1),
              1: const pw.FlexColumnWidth(2),
              2: const pw.FlexColumnWidth(2),
              3: const pw.FlexColumnWidth(1),
            },
            cellAlignments: {
              0: pw.Alignment.center,
              1: pw.Alignment.centerLeft,
              2: pw.Alignment.centerLeft,
              3: pw.Alignment.center,
            },
          ),
          pw.SizedBox(height: 20),
        ],
      ],
    ),
  );

  // Mostrar/Imprimir PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
