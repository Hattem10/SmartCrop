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
  // HomePage
  {
    'a2hgecjf': {
      'en': 'Your choices for plants',
      'ar': '',
    },
    'xwarasrg': {
      'en': 'Home',
      'ar': '',
    },
    'ek1xdizd': {
      'en': 'Beans',
      'ar': '',
    },
    'dsx52gy8': {
      'en': 'Eggplants',
      'ar': '',
    },
    'pwbjqw6a': {
      'en': 'Carrots',
      'ar': '',
    },
    'a9h72krl': {
      'en': 'Peach',
      'ar': '',
    },
    '5r049smv': {
      'en': 'Cherry',
      'ar': '',
    },
    'qn9xhoew': {
      'en': 'Apricot',
      'ar': '',
    },
    'hvdbjz8s': {
      'en': 'Search plants here...',
      'ar': '',
    },
    '6dnkkysz': {
      'en': 'Contact Us',
      'ar': '',
    },
    'azmcwiez': {
      'en': 'Invite Friends',
      'ar': '',
    },
    '1k8461s2': {
      'en': 'FAQs',
      'ar': '',
    },
    '29v02i8o': {
      'en': 'About App',
      'ar': '',
    },
    '9u64482z': {
      'en': 'Settings',
      'ar': '',
    },
    'hx2g03m9': {
      'en': 'Logout',
      'ar': '',
    },
  },
  // ChoicePage
  {
    '9ol4wqwc': {
      'en': 'What type of user would you like to select?',
      'ar': '',
    },
    'r1uny1wk': {
      'en': 'Farmer',
      'ar': '',
    },
    '4luwfpw8': {
      'en': 'Gardener',
      'ar': '',
    },
    'dcu9znn6': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SuccessPage
  {
    '9uncuefh': {
      'en': 'SmartCrop',
      'ar': '',
    },
    'dn9be1m5': {
      'en': 'your account has been created successfully!',
      'ar': '',
    },
    'bfy1brk3': {
      'en': 'Continue',
      'ar': '',
    },
    '3ra7bvy1': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LandDetails
  {
    '43yqdwxo': {
      'en': 'Land details',
      'ar': '',
    },
    '4a0xjqd4': {
      'en': 'Size of land/planting space',
      'ar': '',
    },
    'je4zystu': {
      'en': 'Sandy',
      'ar': '',
    },
    'b1f5j98e': {
      'en': 'Slit',
      'ar': '',
    },
    'du7pd9si': {
      'en': 'Clay',
      'ar': '',
    },
    'opftn5fh': {
      'en': 'Loamy',
      'ar': '',
    },
    'k6aa4fpz': {
      'en': 'Soil Type',
      'ar': '',
    },
    'kp0im0y1': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'pdpdlik7': {
      'en': 'Summer',
      'ar': '',
    },
    'evyuuzqk': {
      'en': 'Spring',
      'ar': '',
    },
    'ehjjcv2i': {
      'en': 'Autumn',
      'ar': '',
    },
    'kbl7h7dw': {
      'en': 'Winter',
      'ar': '',
    },
    'bi1ugi44': {
      'en': 'Season Preferences',
      'ar': '',
    },
    'r03vszpa': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'bozk4yak': {
      'en': '1',
      'ar': '',
    },
    'ysj8le4r': {
      'en': '2',
      'ar': '',
    },
    'voyvh26x': {
      'en': '3',
      'ar': '',
    },
    'naw9oov9': {
      'en': 'Sunlight Exposure',
      'ar': '',
    },
    't5kisgnb': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '8k3wqokf': {
      'en': 'Confirm',
      'ar': '',
    },
    '3v6gi535': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Search
  {
    'l2eepfmj': {
      'en': 'Search plants here...',
      'ar': '',
    },
    'ny5gp87z': {
      'en': 'Search',
      'ar': '',
    },
    '6eow0oih': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SignIn
  {
    '2lw4ift2': {
      'en': 'Sign in',
      'ar': '',
    },
    '9hewaz4k': {
      'en': 'Name',
      'ar': '',
    },
    'y89yzwac': {
      'en': 'Email Address',
      'ar': '',
    },
    'd7z6a50h': {
      'en': 'Password',
      'ar': '',
    },
    '83idtz67': {
      'en': 'SIGN IN',
      'ar': '',
    },
    'odrrz24v': {
      'en': 'Sign up',
      'ar': '',
    },
    'pytgf1z4': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SignUp
  {
    'tc60ihzr': {
      'en': 'Sign up',
      'ar': '',
    },
    'sccgfrkj': {
      'en': 'Name',
      'ar': '',
    },
    '3f40qmgr': {
      'en': 'Email Address',
      'ar': '',
    },
    '4h2bkh9t': {
      'en': 'Phone Number\n',
      'ar': '',
    },
    'sq6fsw7d': {
      'en': 'Password',
      'ar': '',
    },
    '7grrvz0f': {
      'en': 'Confirm Password',
      'ar': '',
    },
    'afc4yj5h': {
      'en': 'SIGN UP',
      'ar': '',
    },
    '12f9caco': {
      'en': 'Sign in',
      'ar': '',
    },
    '2bj9k421': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Account
  {
    '8ckpn1sd': {
      'en': 'Edit Profile',
      'ar': '',
    },
    'hg31r50p': {
      'en': 'Share Profile',
      'ar': '',
    },
    '031fj6hp': {
      'en': 'Favorites',
      'ar': '',
    },
    '5757lmhd': {
      'en': 'Language',
      'ar': '',
    },
    'n2hs7bqr': {
      'en': 'Location',
      'ar': '',
    },
    'dx3q98al': {
      'en': 'Land details',
      'ar': '',
    },
    's3g6hjtj': {
      'en': 'Experience level',
      'ar': '',
    },
    'k1eeqll5': {
      'en': 'Logout',
      'ar': '',
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
      'ar': '',
    },
    'rskcich7': {
      'en': 'Recommended',
      'ar': 'مقترحات',
    },
    'y1k2yofe': {
      'en': 'Beans',
      'ar': '',
    },
    '0l5pw4yj': {
      'en': 'Carrots',
      'ar': '',
    },
    'tedmpebp': {
      'en': 'Eggplants',
      'ar': '',
    },
    'yxcfo4p2': {
      'en': 'Show more',
      'ar': '',
    },
    '5w0893hn': {
      'en': 'Peach',
      'ar': '',
    },
    'r69qvclq': {
      'en': 'Cherry',
      'ar': '',
    },
    'wuapp1qz': {
      'en': 'Apricot',
      'ar': '',
    },
    'zg9o9moq': {
      'en': 'Show more',
      'ar': '',
    },
    'hfau3rrp': {
      'en': 'Community picks',
      'ar': 'اختيرات المجتمع',
    },
    'o4temysu': {
      'en': 'Chlorophytum',
      'ar': '',
    },
    'u9qxajd2': {
      'en': 'Cherry',
      'ar': '',
    },
    'qfso43lu': {
      'en': 'Apricot',
      'ar': '',
    },
    't9cmt22b': {
      'en': 'Tutorials',
      'ar': 'تعليمات',
    },
    'tte17ayw': {
      'en': 'Top 8 Easy To Grow Vegetables For Beginners|SEED TO HARVEST',
      'ar': '',
    },
    'i6m2txtu': {
      'en': 'Contact Us',
      'ar': '',
    },
    't0niq3tt': {
      'en': 'Invite Friends',
      'ar': '',
    },
    'r095gd7t': {
      'en': 'Visit Website',
      'ar': '',
    },
    '1lxpz9zv': {
      'en': 'About App',
      'ar': '',
    },
    'ira6ocdu': {
      'en': 'Settings',
      'ar': '',
    },
    '5o2tnh9n': {
      'en': 'Logout',
      'ar': '',
    },
  },
  // Edit
  {
    'q2ip80sq': {
      'en': 'Change Photo',
      'ar': '',
    },
    '094sfu33': {
      'en': 'Name',
      'ar': '',
    },
    'bkr44o7r': {
      'en': 'Email',
      'ar': '',
    },
    '572tolku': {
      'en': 'Password',
      'ar': '',
    },
    'u7yw81gd': {
      'en': 'Phone number',
      'ar': '',
    },
    'e6lmd3zz': {
      'en': 'Occupation',
      'ar': '',
    },
    'np5ugatm': {
      'en': 'Farmer',
      'ar': '',
    },
    'd5hnvhme': {
      'en': 'Gardener',
      'ar': '',
    },
    'i4zvfxzw': {
      'en': 'Experience level',
      'ar': '',
    },
    'rrxcck14': {
      'en': 'Experienced',
      'ar': '',
    },
    'z0sqpana': {
      'en': 'Non-experienced',
      'ar': '',
    },
    'u7spupbi': {
      'en': 'Save',
      'ar': '',
    },
    'nlyklbq2': {
      'en': 'Delete Account',
      'ar': '',
    },
    'o8hquznn': {
      'en': 'Home',
      'ar': '',
    },
  },
  // VerifyReminder
  {
    'wr1rpv8r': {
      'en': 'Email Verification Reminder',
      'ar': '',
    },
    'hdn0toed': {
      'en': 'Please verify your email.',
      'ar': '',
    },
    'p3t9toc6': {
      'en': 'Resend Email',
      'ar': '',
    },
  },
  // ConfirmDelete
  {
    'kq5vfxom': {
      'en': 'Are you sure you want to delete your account?',
      'ar': '',
    },
    'x2lke3gb': {
      'en': 'This action cannot be undone.',
      'ar': '',
    },
    'jmjayia7': {
      'en': 'Go Back',
      'ar': '',
    },
    'z3cgkfro': {
      'en': 'Delete Account',
      'ar': '',
    },
  },
  // UpdateEmail
  {
    'zntdki8r': {
      'en': 'Email',
      'ar': '',
    },
    'o8sabqbf': {
      'en': 'Update',
      'ar': '',
    },
  },
  // UpdateName
  {
    '0lwlkyx6': {
      'en': 'Name',
      'ar': '',
    },
    'dqwwhsom': {
      'en': 'Update',
      'ar': '',
    },
  },
  // UpdatePhoneNumber
  {
    'mp07mzk2': {
      'en': 'Phone Number',
      'ar': '',
    },
    'o77vqqy2': {
      'en': 'Update',
      'ar': '',
    },
  },
  // UpdatePassword
  {
    'yjkpugdu': {
      'en': 'Password',
      'ar': '',
    },
    'j6qbfxfp': {
      'en': 'Update',
      'ar': '',
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
