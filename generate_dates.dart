import 'package:generate_dates/generate_dates.dart' as generate_dates;
import 'dart:async';
import 'dart:math';
import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:intl/intl.dart';

Future<void> main(List<String> arguments) async {
  var date = DateTime(2010);
  var generatedString = "";
  var target = "cnn.com";
  while (DateTime.now().isAfter(date)) {
    generatedString +=
        "\"http://web.archive.org/web/${DateFormat("yyyyMMdd1200").format(date)}/$target\",\n";
    date = date.add(Duration(days: 1));
  }

  var file = await File('output.txt').writeAsString(generatedString);
}
