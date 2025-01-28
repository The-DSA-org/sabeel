extension ToArabianNumbers on String {
  String toArabian() {
    const Map<String, String> numbers = {
      '0': '٠',
      '1': '١',
      '2': '٢',
      '3': '٣',
      '4': '٤',
      '5': '٥',
      '6': '٦',
      '7': '٧',
      '8': '٨',
      '9': '٩',
    };

    return replaceAllMapped(
      RegExp(r'\d'), // Matches any digit (0-9)
          (match) => numbers[match.group(0)!]!, // Access the matched digit correctly
    );
  }
}
extension PrayerNameTranslation on String {
  String toArabicPrayerName() {
    const Map<String, String> prayerNames = {
      'fajr': 'الفجر',
      'dhuhr': 'الظهر',
      'asr': 'العصر',
      'maghrib': 'المغرب',
      'isha': 'العشاء',
      'sunrise': 'الشروق',
    };

    return prayerNames[this] ?? this; // Return Arabic name if found, otherwise original
  }
}

