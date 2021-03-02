part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = Color(0xFF6e00c6);
Color white = Color(0xFFfafafa);
Color textgrey = Color(0xFF9495a3);
Color textblack = Color(0xFF040404);
Color accentColor3 = Color(0xFFADADAD);
Color lupapass = Color(0xFF4a7795);
Color buttonscan = Color(0xFFa70000);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: textblack, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: textgrey, fontWeight: FontWeight.w500);
TextStyle purpleTextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle editText = GoogleFonts.raleway()
    .copyWith(color: lupapass, fontWeight: FontWeight.w500);
