import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

bool isPlacaValida(String? placa) {
  if (placa != null) {
    if (placa.length == 7) {
      return true;
    }
  }
  return false;
}
