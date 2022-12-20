import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text homeTitle(final String text) => Text(
      text,
      style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal),
      // style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    );
