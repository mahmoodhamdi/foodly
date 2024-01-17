String getTimeOfDay() {
  DateTime dateTime = DateTime.now();
  if (dateTime.hour < 12 && dateTime.hour >= 0) {
    return "☀️";
  } else if (dateTime.hour < 17 && dateTime.hour >= 12) {
    return "⛅";
  } else {
    return "🌙";
  }
}
