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

Future generateReportPDFa(dynamic jsonData) async {
  // Asegurarnos de tener siempre una lista
  final List<dynamic> dataList = (jsonData is List) ? jsonData : [jsonData];
  final reportData = Map<String, dynamic>.from(dataList.first);

  // Extraer datos del JSON
  final student = Map<String, dynamic>.from(
    reportData['student'] as Map<String, dynamic>,
  );
  final grades = List<Map<String, dynamic>>.from(
    reportData['grades'] as List<dynamic>,
  );
  final average = reportData['average'];

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
            'Boleta de Calificaciones',
            style: pw.TextStyle(
              fontSize: 24,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ),
        pw.SizedBox(height: 20),

        // — DATOS DEL ESTUDIANTE —
        pw.Text(
          'Datos del Estudiante',
          style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
        ),
        pw.SizedBox(height: 10),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Nombre: ${student['name']}'),
            pw.Text('Matrícula: ${student['studentId']}'),
            pw.Text('Grado: ${student['gradeLevel']}'), // Etiqueta actualizada
            pw.Text('Email: ${student['email']}'),
          ],
        ),
        pw.SizedBox(height: 20),

        // — TABLA DE CALIFICACIONES —
        pw.Text(
          'Calificaciones',
          style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
        ),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['Asignatura', 'Fecha', 'Calificación'],
          data: grades.map((g) {
            final subj = Map<String, dynamic>.from(g['subject']);
            final date = DateTime.parse(g['date']);
            return [
              subj['name'] as String,
              dateFmt.format(date),
              g['score'].toString(),
            ];
          }).toList(),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
          columnWidths: {
            0: const pw.FlexColumnWidth(2),
            1: const pw.FlexColumnWidth(1),
            2: const pw.FlexColumnWidth(1),
          },
          cellAlignments: {
            0: pw.Alignment.centerLeft,
            1: pw.Alignment.center,
            2: pw.Alignment.center,
          },
        ),
        pw.SizedBox(height: 20),

        // — PROMEDIO GENERAL —
        pw.Container(
          alignment: pw.Alignment.center,
          child: pw.Text(
            'Promedio General: $average',
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
