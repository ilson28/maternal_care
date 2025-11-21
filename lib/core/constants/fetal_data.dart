class FetalData {
  final int week;
  final double lengthCm;
  final int weightGrams;

  FetalData({
    required this.week,
    required this.lengthCm,
    required this.weightGrams,
  });
}

// Tabla de datos fetales según estándares de la OMS
final Map<int, FetalData> fetalDataByWeek = {
  8: FetalData(week: 8, lengthCm: 1.6, weightGrams: 1),
  9: FetalData(week: 9, lengthCm: 2.3, weightGrams: 2),
  10: FetalData(week: 10, lengthCm: 3.1, weightGrams: 4),
  11: FetalData(week: 11, lengthCm: 4.1, weightGrams: 7),
  12: FetalData(week: 12, lengthCm: 5.4, weightGrams: 14),
  13: FetalData(week: 13, lengthCm: 7.4, weightGrams: 23),
  14: FetalData(week: 14, lengthCm: 8.7, weightGrams: 43),
  15: FetalData(week: 15, lengthCm: 10.1, weightGrams: 70),
  16: FetalData(week: 16, lengthCm: 11.6, weightGrams: 100),
  17: FetalData(week: 17, lengthCm: 13.0, weightGrams: 140),
  18: FetalData(week: 18, lengthCm: 14.2, weightGrams: 190),
  19: FetalData(week: 19, lengthCm: 15.3, weightGrams: 240),
  20: FetalData(week: 20, lengthCm: 16.4, weightGrams: 300),
  21: FetalData(week: 21, lengthCm: 26.7, weightGrams: 360),
  22: FetalData(week: 22, lengthCm: 27.8, weightGrams: 430),
  23: FetalData(week: 23, lengthCm: 28.9, weightGrams: 501),
  24: FetalData(week: 24, lengthCm: 30.0, weightGrams: 600),
  25: FetalData(week: 25, lengthCm: 34.6, weightGrams: 660),
  26: FetalData(week: 26, lengthCm: 35.6, weightGrams: 760),
  27: FetalData(week: 27, lengthCm: 36.6, weightGrams: 875),
  28: FetalData(week: 28, lengthCm: 37.6, weightGrams: 1005),
  29: FetalData(week: 29, lengthCm: 38.6, weightGrams: 1153),
  30: FetalData(week: 30, lengthCm: 39.9, weightGrams: 1319),
  31: FetalData(week: 31, lengthCm: 41.1, weightGrams: 1502),
  32: FetalData(week: 32, lengthCm: 42.4, weightGrams: 1702),
  33: FetalData(week: 33, lengthCm: 43.7, weightGrams: 1918),
  34: FetalData(week: 34, lengthCm: 45.0, weightGrams: 2146),
  35: FetalData(week: 35, lengthCm: 46.2, weightGrams: 2383),
  36: FetalData(week: 36, lengthCm: 47.4, weightGrams: 2622),
  37: FetalData(week: 37, lengthCm: 48.6, weightGrams: 2859),
  38: FetalData(week: 38, lengthCm: 49.8, weightGrams: 3083),
  39: FetalData(week: 39, lengthCm: 50.7, weightGrams: 3288),
  40: FetalData(week: 40, lengthCm: 51.2, weightGrams: 3462),
  41: FetalData(week: 41, lengthCm: 51.7, weightGrams: 3597),
  42: FetalData(week: 42, lengthCm: 51.5, weightGrams: 3685),
};

// Función para obtener datos fetales por semana
FetalData? getFetalDataByWeek(int week) {
  return fetalDataByWeek[week];
}

// Función para formatear el peso
String formatWeight(int weightGrams) {
  if (weightGrams >= 1000) {
    double kg = weightGrams / 1000;
    return "${kg.toStringAsFixed(1)} KG";
  }
  return "$weightGrams GRAMOS";
}

// Función para formatear la longitud
String formatLength(double lengthCm) {
  return "${lengthCm.toStringAsFixed(1)} CM";
}
