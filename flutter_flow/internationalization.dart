import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // ChoicePage
  {
    '9ol4wqwc': {
      'en': 'What type of user would you like to select?',
      'ar': 'ما نوع المستخدم الذي تريد اختياره؟',
    },
    'r1uny1wk': {
      'en': 'Farmer',
      'ar': 'مزارع',
    },
    '4luwfpw8': {
      'en': 'Gardener',
      'ar': 'بستاني',
    },
    'dcu9znn6': {
      'en': '',
      'ar': '',
    },
  },
  // SuccessPage
  {
    '9uncuefh': {
      'en': 'SmartCrop',
      'ar': 'سمارت كروب',
    },
    'dn9be1m5': {
      'en': 'your account has been created successfully!',
      'ar': 'لقد تم إنشاء حسابك بنجاح!',
    },
    'bfy1brk3': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    '3ra7bvy1': {
      'en': '',
      'ar': '',
    },
  },
  // SignIn
  {
    '2lw4ift2': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'y89yzwac': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'pwc96pd6': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '83idtz67': {
      'en': 'SIGN IN',
      'ar': 'تسجيل الدخول',
    },
    'odrrz24v': {
      'en': 'Sign up',
      'ar': 'اشتراك',
    },
    '8c9t5l08': {
      'en': 'Required field',
      'ar': 'يتطلب حقلا',
    },
    'ol4ajqcj': {
      'en': 'Invalid email',
      'ar': 'بريد إلكتروني خاطئ',
    },
    'l9n3ovh2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'eshvdyhb': {
      'en': 'Required field',
      'ar': 'يتطلب حقلا',
    },
    '3a7tdfpc': {
      'en': 'Minimum 8 characters required',
      'ar': 'الحد الأدنى 8 أحرف مطلوبة',
    },
    'lph0pakx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pytgf1z4': {
      'en': '',
      'ar': '',
    },
  },
  // SignUp
  {
    'tc60ihzr': {
      'en': 'Sign up',
      'ar': 'اشتراك',
    },
    '05lcp6ob': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'sccgfrkj': {
      'en': '',
      'ar': 'اسم',
    },
    'jvzq9y1w': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    '3f40qmgr': {
      'en': '',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'ijxh6rkk': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'sq6fsw7d': {
      'en': '',
      'ar': 'كلمة المرور',
    },
    'glpypaad': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    '7grrvz0f': {
      'en': '',
      'ar': 'تأكيد كلمة المرور',
    },
    'afc4yj5h': {
      'en': 'SIGN UP',
      'ar': 'اشتراك',
    },
    '12f9caco': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'drwb9ed3': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qp56vxlh': {
      'en': '',
      'ar': '',
    },
    'bbk78a95': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'mplkfgat': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'bjcw4w88': {
      'en': 'Invalid email address or the email is already used',
      'ar':
          'عنوان البريد الإلكتروني غير صالح أو البريد الإلكتروني مستخدم بالفعل',
    },
    'zwewbzw0': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'e3op3bza': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '3hlmgaf6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm1zos693': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'adv3rcz3': {
      'en': 'Minimum 8 characters required',
      'ar': 'الحد الأدنى 8 أحرف مطلوبة',
    },
    'w3wckusf': {
      'en':
          'Password does not meet the requirements\n- Minimum 8 characters.\n- At least one uppercase letter (A-Z).\n- At least one lowercase letter (a-z).\n- At least one digit (0-9).\n- At least one special character (@\$!%*?&).',
      'ar':
          'كلمة المرور لا تلبي المتطلبات\n- الحد الأدنى 8 أحرف.\n- حرف كبير واحد على الأقل (A-Z).\n- حرف صغير واحد على الأقل (a-z).\n- رقم واحد على الأقل (0-9).\n- حرف خاص واحد على الأقل (@\$!%*?&).',
    },
    'p6zusipw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6qd1seah': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7bmtrw31': {
      'en': 'Minimum 8 characters required',
      'ar': 'الحد الأدنى 8 أحرف مطلوبة',
    },
    'ui5vwydd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '2bj9k421': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Account
  {
    '8ckpn1sd': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'hg31r50p': {
      'en': 'Share Profile',
      'ar': 'مشاركة الملف الشخصي',
    },
    '031fj6hp': {
      'en': 'Favorites',
      'ar': 'المفضلة',
    },
    'exwuoiy9': {
      'en': 'Season',
      'ar': 'موسم',
    },
    'n2hs7bqr': {
      'en': 'Location',
      'ar': 'موقع',
    },
    'dx3q98al': {
      'en': 'Soil details',
      'ar': 'تفاصيل التربة',
    },
    '1a97xnid': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'k1eeqll5': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '8vf4t359': {
      'en': '',
      'ar': '',
    },
  },
  // ExplorePage
  {
    '83cv3id3': {
      'en': 'Search plants here...',
      'ar': 'ابحث عن النباتات هنا...',
    },
    'rskcich7': {
      'en': 'Recommended',
      'ar': 'مُستَحسَن',
    },
    'hfau3rrp': {
      'en': 'Community picks',
      'ar': 'يختار المجتمع',
    },
    't9cmt22b': {
      'en': 'Tutorials',
      'ar': 'دروس',
    },
    'q58ejcps': {
      'en': 'Top 8 Easy To Grow Vegetables For Beginners|SEED TO HARVEST',
      'ar': 'أفضل 8 خضروات سهلة النمو للمبتدئين|البذور للحصاد',
    },
    'ilhtvx6i': {
      'en': 'How I Farm All Winter',
      'ar': '',
    },
    '7stefntp': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    'm3vsu8cf': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'ft7u5ifx': {
      'en': 'About App',
      'ar': 'عن التطبيق',
    },
  },
  // Edit
  {
    'q2ip80sq': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
    },
    '094sfu33': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'bkr44o7r': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '572tolku': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'e6lmd3zz': {
      'en': 'Occupation',
      'ar': 'إشغال',
    },
    'np5ugatm': {
      'en': 'Farmer',
      'ar': 'مزارع',
    },
    'd5hnvhme': {
      'en': 'Gardener',
      'ar': 'بستاني',
    },
    'i4zvfxzw': {
      'en': 'Experience level',
      'ar': 'مستوى الخبرة',
    },
    'rrxcck14': {
      'en': 'Experienced',
      'ar': 'ذوي الخبرة',
    },
    'z0sqpana': {
      'en': 'Non-Experienced',
      'ar': 'غير من ذوي الخبرة',
    },
    'u7spupbi': {
      'en': 'Save',
      'ar': 'حفظ',
    },
    'nlyklbq2': {
      'en': 'Delete Account',
      'ar': 'حذف الحساب',
    },
    'o8hquznn': {
      'en': '',
      'ar': '',
    },
  },
  // SearchPage
  {
    'l2eepfmj': {
      'en': 'Search plants here...',
      'ar': 'ابحث عن النباتات هنا...',
    },
    'h1lq7a0x': {
      'en': 'Search',
      'ar': 'بحث',
    },
    '0kyfsckj': {
      'en': '',
      'ar': '',
    },
  },
  // ChooseLocation
  {
    'i9ksnh82': {
      'en': 'Choose your region',
      'ar': 'اختر منطقتك',
    },
    's93ddiij': {
      'en': 'Abha',
      'ar': 'أبها',
    },
    '42glkybc': {
      'en': 'Al-Ahsa',
      'ar': 'الأحساء',
    },
    'wgky3ps8': {
      'en': 'Al-Baha',
      'ar': 'الباحة',
    },
    '9fl07ymk': {
      'en': 'Al-Jouf',
      'ar': 'الجوف',
    },
    'quez45zu': {
      'en': 'Arar',
      'ar': 'عرعر',
    },
    'djhrayt8': {
      'en': 'Bisha',
      'ar': 'بيشة',
    },
    '0m7dmgnh': {
      'en': 'Dammam',
      'ar': 'الدمام',
    },
    '6lwqb1m3': {
      'en': 'Guriat',
      'ar': 'قريات',
    },
    'yut0gu87': {
      'en': 'Hail',
      'ar': 'حائل',
    },
    'p0uxruv5': {
      'en': 'Jeddah',
      'ar': 'جدة',
    },
    'l6ly380l': {
      'en': 'Jizan',
      'ar': 'جازان',
    },
    'x02xdfwy': {
      'en': 'Khamis Mushait',
      'ar': 'خميس مشيط',
    },
    '65w2elvo': {
      'en': 'Madinah',
      'ar': 'المدينة المنورة',
    },
    'dm9snwh5': {
      'en': 'Makkah',
      'ar': 'مكه',
    },
    '7sqjhihq': {
      'en': 'Najran',
      'ar': 'نجران',
    },
    'egcrltal': {
      'en': 'Qaisumah',
      'ar': 'القيصومة',
    },
    'gxd2f524': {
      'en': 'Qassim',
      'ar': 'القصيم',
    },
    'jlmf3nao': {
      'en': 'Rafha',
      'ar': 'رفحاء',
    },
    'a3ywi2o0': {
      'en': 'Riyadh',
      'ar': 'الرياض',
    },
    '7tk5virb': {
      'en': 'Tabuk',
      'ar': 'تبوك',
    },
    'dglnterc': {
      'en': 'Taif',
      'ar': 'الطائف',
    },
    'ofhj6b4h': {
      'en': 'Turaif',
      'ar': 'طريف',
    },
    'e3h7fixt': {
      'en': 'Wadi Aldawaser',
      'ar': 'وادي الدواسر',
    },
    'd9f8hdgn': {
      'en': 'Wejh',
      'ar': 'وجه',
    },
    'j5lzwewi': {
      'en': 'Yenbo',
      'ar': 'ينبع',
    },
    'judtqehd': {
      'en': 'Please select your region',
      'ar': 'الرجاء تحديد منطقتك',
    },
    'd77tz7g0': {
      'en': 'Search for a region',
      'ar': 'ابحث عن منطقة',
    },
    'cij9hj9f': {
      'en': 'Continue',
      'ar': 'اكمل',
    },
    'yi8daav6': {
      'en': '',
      'ar': '',
    },
  },
  // LocationUpdate
  {
    'efh9hmv7': {
      'en': 'Choose your region',
      'ar': 'اختر منطقتك',
    },
    'sjpco4nj': {
      'en': 'Abha',
      'ar': 'أبها',
    },
    'glm56t3b': {
      'en': 'Al-Ahsa',
      'ar': 'الأحساء',
    },
    'ycqcc63i': {
      'en': 'Al-Baha',
      'ar': 'الباحة',
    },
    'gr2nkhuh': {
      'en': 'Al-Jouf',
      'ar': 'الجوف',
    },
    'pu7bon5a': {
      'en': 'Arar',
      'ar': 'عرعر',
    },
    'w7mhf1p0': {
      'en': 'Bisha',
      'ar': 'بيشة',
    },
    'sgvai9sm': {
      'en': 'Dammam',
      'ar': 'الدمام',
    },
    '0a5ov9b4': {
      'en': 'Guriat',
      'ar': 'قريات',
    },
    '1ilwj3hd': {
      'en': 'Hail',
      'ar': 'حائل',
    },
    '9oxy5l9p': {
      'en': 'Jeddah',
      'ar': 'جدة',
    },
    'ydgydbzs': {
      'en': 'Jizan',
      'ar': 'جازان',
    },
    'd5i1xdud': {
      'en': 'Khamis Mushait',
      'ar': 'خميس مشيط',
    },
    'w76regqw': {
      'en': 'Madinah',
      'ar': 'المدينة المنورة',
    },
    '2dirppff': {
      'en': 'Makkah',
      'ar': 'مكه',
    },
    'c438jick': {
      'en': 'Najran',
      'ar': 'نجران',
    },
    'hhhx04p2': {
      'en': 'Qaisumah',
      'ar': 'القيصومة',
    },
    'vghyjld2': {
      'en': 'Qassim',
      'ar': 'القصيم',
    },
    'k2uc611t': {
      'en': 'Rafha',
      'ar': 'رفحاء',
    },
    'ix4fbxy6': {
      'en': 'Riyadh',
      'ar': 'الرياض',
    },
    'pd0t9qc7': {
      'en': 'Tabuk',
      'ar': 'تبوك',
    },
    'oti4riox': {
      'en': 'Taif',
      'ar': 'الطائف',
    },
    'b5f1a0xv': {
      'en': 'Turaif',
      'ar': 'طريف',
    },
    'yfb2hbl9': {
      'en': 'Wadi Aldawaser',
      'ar': 'وادي الدواسر',
    },
    'z7le095a': {
      'en': 'Wejh',
      'ar': 'وجه',
    },
    'runhwnc4': {
      'en': 'Yenbo',
      'ar': 'ينبع',
    },
    '52b6ppc7': {
      'en': 'Please select your region',
      'ar': 'الرجاء تحديد منطقتك',
    },
    'apeqf57u': {
      'en': 'Search for a region',
      'ar': 'ابحث عن منطقة',
    },
    '770aj46q': {
      'en': 'Save',
      'ar': 'حفظ',
    },
    'fhvaj4ua': {
      'en': '',
      'ar': '',
    },
  },
  // LanguageChanger
  {
    'kng0fpe8': {
      'en': 'Choose your language',
      'ar': '',
    },
    'b98v1duy': {
      'en': 'Save',
      'ar': '',
    },
    'z5o5kocf': {
      'en': '',
      'ar': '',
    },
  },
  // HomePage
  {
    'znst1wtt': {
      'en': 'Search plants here...',
      'ar': '',
    },
    'gl3gtuqw': {
      'en': 'Your choices for plants',
      'ar': '',
    },
    '33u085u9': {
      'en': 'Contact Us',
      'ar': '',
    },
    'u4w1glm6': {
      'en': 'FAQs',
      'ar': '',
    },
    'q9suh5lh': {
      'en': 'About App',
      'ar': '',
    },
  },
  // Season
  {
    'o35gap0q': {
      'en': 'Choose season you would like to plant in',
      'ar': '',
    },
    'p859lf2u': {
      'en': 'Summer',
      'ar': '',
    },
    'yno8xlnh': {
      'en': 'Spring',
      'ar': '',
    },
    'pva9w7zu': {
      'en': 'Autumn',
      'ar': '',
    },
    'mtbcs2dr': {
      'en': 'Winter',
      'ar': '',
    },
    'pavthci9': {
      'en': 'Please select a season',
      'ar': '',
    },
    '69nk9e16': {
      'en': 'Search for a region',
      'ar': '',
    },
    'qc8w2jwg': {
      'en': 'Continue',
      'ar': '',
    },
    'ivgqipix': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SoilDetails
  {
    'tfq54dtk': {
      'en': 'Soil details',
      'ar': '',
    },
    'c4e23t5x': {
      'en': 'Nitrogen (kg/ha) present in the soil',
      'ar': '',
    },
    '1kwdwo8q': {
      'en': 'Phosphorus (kg/ha) present in the soil',
      'ar': '',
    },
    'bavtnh02': {
      'en': 'Potassium (kg/ha) present in the soil',
      'ar': '',
    },
    'xbytehpk': {
      'en': 'Soil pH during the crop\'s growing period',
      'ar': '',
    },
    'qe5zd9ct': {
      'en': 'Confirm',
      'ar': '',
    },
    'vgwv4pno': {
      'en':
          'Note:\n\n- The soil pH is from 3.5 to 9.9.\n- The amount of nitrogen (in kg/ha) from 0 to 140.\n- The amount of phosphorus (in kg/ha) from 5 to 145\n- The amount of potassium (in kg/ha)  from 5 to 205',
      'ar': '',
    },
    '165viwxj': {
      'en': '',
      'ar': '',
    },
  },
  // SeasonUpdate
  {
    'hh8nsija': {
      'en': 'Choose season you would like to plant in',
      'ar': '',
    },
    '9yiia8gj': {
      'en': 'Summer',
      'ar': '',
    },
    'eao18xrz': {
      'en': 'Spring',
      'ar': '',
    },
    '7zu1az0d': {
      'en': 'Autumn',
      'ar': '',
    },
    'lw5d8qzr': {
      'en': 'Winter',
      'ar': '',
    },
    'ec5wxh4d': {
      'en': 'Please select a season',
      'ar': '',
    },
    'x5n9o7dg': {
      'en': 'Search for a region',
      'ar': '',
    },
    '4qu0oapl': {
      'en': 'Save',
      'ar': '',
    },
    '7prfz5c5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Favorites
  {
    'j7t00xwc': {
      'en': 'Your favorite crops',
      'ar': '',
    },
    'c2vvx83j': {
      'en': 'Home',
      'ar': '',
    },
  },
  // FAQs
  {
    'z97npj0j': {
      'en': 'FAQs',
      'ar': '',
    },
    'z5a7rcyh': {
      'en': 'How do I get recommendations?',
      'ar': '',
    },
    '337wksm1': {
      'en':
          'SmartCrop uses location , weather data, soil details , and crop preferences to suggest or specify crops based on user input.',
      'ar': '',
    },
    '47k7dj95': {
      'en': 'How do I set up my profile on SmartCrop?',
      'ar': '',
    },
    'cv861t5p': {
      'en':
          'You will be required to create a profile when you first launch the app. You will be required to submit information about your location and type of soil. Having this information will be essential to get recommendations that fit your individual requirements.',
      'ar': '',
    },
    'e3h00hi9': {
      'en': 'Can SmartCrop be used offline?',
      'ar': '',
    },
    'oov3z96w': {
      'en':
          'While certain functions may require internet connection for real-time data, SmartCrop offers basic recommendations offline. Make sure you connect to the internet on a regular basis to get the most recent updates.',
      'ar': '',
    },
    '4jmg13xc': {
      'en': 'How do I filter desired crops?',
      'ar': '',
    },
    '6hozc2af': {
      'en':
          'By tapping into the Search bar, users can seamlessly explore and discover their desired crops by name or category, simplifying the browsing experience across numerous categories.',
      'ar': '',
    },
    'eya4ndjd': {
      'en': 'What happens if I change my location?',
      'ar': '',
    },
    'zbzwrggp': {
      'en':
          'If you change your location, you can change or update your information in the “Location” section. The app will consider your new location, Soil details, and environmental conditions, to provide recommendations based on your updated farming location.',
      'ar': '',
    },
    'krwnzn3b': {
      'en': 'How do I edit my Soil details?',
      'ar': '',
    },
    'ybm2qsq4': {
      'en':
          'To edit your Soil details is a straightforward process. Simply navigate to your profile, tap Soil details, then select edit. Finally, you can make changes or update your Soil details.',
      'ar': '',
    },
    '80693ifw': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ExpertiseLVL
  {
    'f58ji2m9': {
      'en': 'What is your expertise level?',
      'ar': '',
    },
    'fz330fur': {
      'en': 'Experienced',
      'ar': '',
    },
    'yrmp3pon': {
      'en': 'Non-Experienced',
      'ar': '',
    },
    'a3jd48i2': {
      'en': '',
      'ar': '',
    },
  },
  // VerifyReminder
  {
    'wr1rpv8r': {
      'en': 'Email Verification Reminder',
      'ar': 'تذكير التحقق من البريد الإلكتروني',
    },
    'hdn0toed': {
      'en': 'Please verify your email.',
      'ar': 'يرجى التحقق من البريد الإلكتروني الخاص بك.',
    },
    'p3t9toc6': {
      'en': 'Resend Email',
      'ar': 'إعادة إرسال البريد الإلكتروني',
    },
  },
  // ConfirmDelete
  {
    'kq5vfxom': {
      'en': 'Are you sure you want to delete your account?',
      'ar': 'هل انت متأكد انك تريد حذف حسابك؟',
    },
    'x2lke3gb': {
      'en': 'This action cannot be undone.',
      'ar': 'لا يمكن التراجع عن هذا الإجراء.',
    },
    'jmjayia7': {
      'en': 'Go Back',
      'ar': 'عُد',
    },
    'z3cgkfro': {
      'en': 'Delete Account',
      'ar': 'حذف الحساب',
    },
  },
  // UpdateEmail
  {
    'zntdki8r': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'o8sabqbf': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // UpdateName
  {
    '0lwlkyx6': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'dqwwhsom': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // UpdatePassword
  {
    'yjkpugdu': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'j6qbfxfp': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // ContactUs
  {
    '6e61ntl8': {
      'en': 'You can contact us at:',
      'ar': '',
    },
    'k874rwe0': {
      'en': 'smartcrop@hotmail.com',
      'ar': '',
    },
  },
  // AboutApp
  {
    '2ye9sq8q': {
      'en': 'About App:',
      'ar': '',
    },
    'oei3apm7': {
      'en':
          'SmartCrop is like a friendly guide for farmers in Saudi Arabia, serving as a personalized guide for farmer. It helps them choose the best crops for their land using smart technology like data analysis and machine learning on available data based on local soil, environmental conditions, and optimal planting times. It goes beyond by predicting success rates for specific crops in given areas and offering precise planting advice. For instance, it can address questions like why Al-Madina mint is so special and whether it can achieve similar excellence if it was planted in Makkah, along with recommendations about where and what to plant it in Saudi. The app gives farmers easy-to-follow info on soil, weather helping farmers make informed decisions on fertilization, pollination, and crop care It\'s all about helping farmers make smart choices for their crops, so they can grow more and make farming easier with SmartCrop, farming becomes smarter and more accessible, putting a knowledgeable assistant right in farmers\' pockets. ',
      'ar': '',
    },
    '491jsqaf': {
      'en': 'Dismiss',
      'ar': '',
    },
  },
  // CommunityAdd
  {
    'gkrtzc6i': {
      'en': 'What crop would you like to add?',
      'ar': '',
    },
    'fje99sxu': {
      'en': 'Add photo',
      'ar': '',
    },
    'a5axhzdo': {
      'en': 'Please enter crop name',
      'ar': '',
    },
    'luznkt1z': {
      'en': 'please enter crop category ',
      'ar': '',
    },
    '8ok59uq9': {
      'en': 'Abha',
      'ar': '',
    },
    'adlgcj3f': {
      'en': 'Al-Ahsa',
      'ar': '',
    },
    'r06uiskk': {
      'en': 'Al-Baha',
      'ar': '',
    },
    'ljv8cm3q': {
      'en': 'Al-Jouf',
      'ar': '',
    },
    '21e2ju1d': {
      'en': 'Arar',
      'ar': '',
    },
    'imhiwg9o': {
      'en': 'Bisha',
      'ar': '',
    },
    'u4dofw7v': {
      'en': 'Dammam',
      'ar': '',
    },
    'ejpnzi4a': {
      'en': 'Guriat',
      'ar': '',
    },
    'u01bd66h': {
      'en': 'Hail',
      'ar': '',
    },
    'dmi1tdjd': {
      'en': 'Jeddah',
      'ar': '',
    },
    '2h520ru7': {
      'en': 'Jizan',
      'ar': '',
    },
    '0w7yavsy': {
      'en': 'Khamis Mushait',
      'ar': '',
    },
    '1tubq1kk': {
      'en': 'Madinah',
      'ar': '',
    },
    'xnyjggw2': {
      'en': 'Makkah',
      'ar': '',
    },
    '1tqqeuay': {
      'en': 'Najran',
      'ar': '',
    },
    'cyx3kj2l': {
      'en': 'Qaisumah',
      'ar': '',
    },
    'u38kptwx': {
      'en': 'Qassim',
      'ar': '',
    },
    '3a6zxnv6': {
      'en': 'Rafha',
      'ar': '',
    },
    '6a9oyk47': {
      'en': 'Riyadh',
      'ar': '',
    },
    'ydbmfzg5': {
      'en': 'Tabuk',
      'ar': '',
    },
    'fovjy436': {
      'en': 'Taif',
      'ar': '',
    },
    'jkdrpram': {
      'en': 'Turaif',
      'ar': '',
    },
    '226icyc0': {
      'en': 'Wadi Aldawaser',
      'ar': '',
    },
    '1vzd2tg7': {
      'en': 'Wejh',
      'ar': '',
    },
    'bf1hxy6s': {
      'en': 'Yenbo',
      'ar': '',
    },
    'y8fmn53x': {
      'en': 'Please select your region',
      'ar': '',
    },
    '5mslmkvx': {
      'en': 'Search for a region',
      'ar': '',
    },
    'hxvitees': {
      'en': 'Summer',
      'ar': '',
    },
    'cpve3xf2': {
      'en': 'Spring',
      'ar': '',
    },
    'op3c6ump': {
      'en': 'Autumn',
      'ar': '',
    },
    'bz6lk3cr': {
      'en': 'Winter',
      'ar': '',
    },
    'd5zq0hq6': {
      'en': 'Please select a season',
      'ar': '',
    },
    'pzbbbuem': {
      'en': 'Search for a region',
      'ar': '',
    },
    '7x1856lv': {
      'en': 'Add',
      'ar': '',
    },
    '9styjlb8': {
      'en': 'Field is required',
      'ar': '',
    },
    'ivoe2q8m': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'jgip831o': {
      'en': 'Field is required',
      'ar': '',
    },
    'qrtf31dr': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // Miscellaneous
  {
    'r4oyh014': {
      'en': '',
      'ar': '',
    },
    'f4pxs3ox': {
      'en': '',
      'ar': '',
    },
    'l04zomac': {
      'en': '',
      'ar': '',
    },
    'l5xewm8r': {
      'en': '',
      'ar': '',
    },
    'lsqfrjfg': {
      'en': '',
      'ar': '',
    },
    't5xe3530': {
      'en': '',
      'ar': '',
    },
    'b3yns1q2': {
      'en': '',
      'ar': '',
    },
    '8m1v7tfg': {
      'en': '',
      'ar': '',
    },
    'k16pkt6y': {
      'en': '',
      'ar': '',
    },
    'l2du3bvy': {
      'en': '',
      'ar': '',
    },
    'qx28zfdv': {
      'en': '',
      'ar': '',
    },
    '5upvfwgn': {
      'en': '',
      'ar': '',
    },
    'vjhny8go': {
      'en': '',
      'ar': '',
    },
    'xes4uqae': {
      'en': '',
      'ar': '',
    },
    '29bhyb18': {
      'en': '',
      'ar': '',
    },
    'prna1uxf': {
      'en': '',
      'ar': '',
    },
    'dml393c7': {
      'en': '',
      'ar': '',
    },
    'f4g7olak': {
      'en': '',
      'ar': '',
    },
    'yu3kc97e': {
      'en': '',
      'ar': '',
    },
    'r10rrdr2': {
      'en': '',
      'ar': '',
    },
    'i48sz1qu': {
      'en': '',
      'ar': '',
    },
    '9fdfg9q9': {
      'en': '',
      'ar': '',
    },
    'yatodt8s': {
      'en': '',
      'ar': '',
    },
    'b3xdd78a': {
      'en': '',
      'ar': '',
    },
    '5g7bmdeu': {
      'en': '',
      'ar': '',
    },
    'pmv4vrg7': {
      'en': '',
      'ar': '',
    },
    '3vs4v2hg': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
