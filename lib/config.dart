import 'package:flutter/material.dart';

// ═══ عدّل هذه القيم فقط قبل البناء ═══
const String YOUTUBE_API_KEY = 'YOUR_API_KEY_HERE';
const String CHANNEL_ID = 'YOUR_CHANNEL_ID_HERE';       // يبدأ بـ UC
const String UPLOADS_PLAYLIST = 'YOUR_UPLOADS_PLAYLIST_HERE'; // نفسه مع UU

const String BANNER_AD_UNIT_ID = 'ca-app-pub-3940256099942544/6300978111';
const String INTERSTITIAL_AD_UNIT_ID = 'ca-app-pub-3940256099942544/1033173712';

const String BLOG_URL = 'https://hshukairy.blogspot.com';
const String CHANNEL_URL = 'https://www.youtube.com/@HassanSHukair';
const String SHARE_HASHTAG = '#شهادة_الشقيري';
const String CERTS_FEED_LABEL = 'شهادات-الطلاب';
String certsFeedUrl({int max = 50}) =>
    'https://hshukairy.blogspot.com/feeds/posts/default/-/${Uri.encodeComponent(CERTS_FEED_LABEL)}?alt=json&max-results=$max';
const String APK_DRIVE_PAGE_URL = '';

// ═══ الألوان ═══
const Color PRIMARY_COLOR = Color(0xFF1E3A8A);
const Color ACCENT_COLOR = Color(0xFFFBBF24);
const Color BG_COLOR = Color(0xFFF8FAFC);
const Color CARD_COLOR = Colors.white;
const Color SUCCESS_COLOR = Color(0xFF059669);
const Color DARK_BG = Color(0xFF0B1120);
const Color DARK_CARD = Color(0xFF16223A);
const Color DARK_APPBAR = Color(0xFF101A2E);
const Color DARK_PRIMARY = Color(0xFF60A5FA);

bool isDark(BuildContext c) => Theme.of(c).brightness == Brightness.dark;
Color cardColor(BuildContext c) => isDark(c) ? DARK_CARD : CARD_COLOR;
Color bgColor(BuildContext c) => isDark(c) ? DARK_BG : BG_COLOR;
Color primaryColor(BuildContext c) => isDark(c) ? DARK_PRIMARY : PRIMARY_COLOR;
Color textColor(BuildContext c) => isDark(c) ? Colors.white : Colors.black87;
Color subTextColor(BuildContext c) => isDark(c) ? Colors.white60 : Colors.grey[600]!;

// ═══ المواد (keywords تطابق عناوين قوائم التشغيل في قناتك) ═══
class SubjectConfig {
  final String name, description;
  final IconData icon;
  final Color color;
  final List<String> keywords;
  const SubjectConfig({required this.name, required this.description,
      required this.icon, required this.color, required this.keywords});
}

const List<SubjectConfig> SUBJECTS = [
  SubjectConfig(name: 'المحاسبة المالية', description: 'شروحات المحاسبة المالية',
      icon: Icons.account_balance, color: Color(0xFF1E3A8A), keywords: ['محاسبة', 'مالية']),
  SubjectConfig(name: 'نظام الجدارات', description: 'منصة الجدارات والامتحانات',
      icon: Icons.verified, color: Color(0xFF059669), keywords: ['جدارات', 'جداة', 'كفاءة']),
  SubjectConfig(name: 'فني كاتب حسابات', description: 'شعبة فني كاتب حسابات',
      icon: Icons.calculate, color: Color(0xFFDC2626), keywords: ['كاتب حسابات', 'كاتب الحسابات']),
  SubjectConfig(name: 'شعبة المبيعات', description: 'فنون البيع والمتاجر',
      icon: Icons.storefront, color: Color(0xFFD97706), keywords: ['مبيعات', 'البيع', 'متاجر']),
  SubjectConfig(name: 'مراجعات نهائية', description: 'مراجعات وحل امتحانات',
      icon: Icons.assignment_turned_in, color: Color(0xFF7C3AED), keywords: ['مراجعة', 'مراجعات', 'نهائي']),
];
