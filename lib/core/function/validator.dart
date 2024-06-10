String? validator(String? value, String Text) {
  if (value == null || value.isEmpty) {
    return Text;
  }
  return null;
}

very({
  required String val,
  required int max,
  required int min,
  required String text,
}) {
  if (val.isEmpty) {
    return ' he isEmpty';
  }
  if (val.length > max) {
    return "can't be larger than $max";
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
}
