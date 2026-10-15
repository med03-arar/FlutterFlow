import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr'];

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
    String? frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Authentication
  {
    'plceg5ei': {
      'en': 'Welcome Back',
      'fr': 'Content de te revoir',
    },
    'w7rnihop': {
      'en': 'Sign in to manage your boutique',
      'fr': 'Connectez-vous pour gérer votre boutique',
    },
    '0h0jmpza': {
      'en': 'Login',
      'fr': 'Se connecter',
    },
    '1i5v6jhn': {
      'en': 'Register',
      'fr': 'Registre',
    },
    'wf4n454h': {
      'en': 'Email Address',
      'fr': 'Adresse email',
    },
    'v9ibc6h8': {
      'en': 'Password',
      'fr': 'Mot de passe',
    },
    'balblx9a': {
      'en': 'Forgot?',
      'fr': 'Oublié?',
    },
    '7rgbztte': {
      'en': 'OR',
      'fr': 'OU',
    },
    'gj6csu4c': {
      'en': 'Don\'t have an account?',
      'fr': 'Vous n\'avez pas de compte ?',
    },
    '74cwciqq': {
      'en': 'Create account',
      'fr': 'Créer un compte',
    },
    'ihclwn2f': {
      'en': 'Anglais | Français ',
      'fr': 'Anglais | Français',
    },
  },
  // UserProfile
  {
    'e9akywxk': {
      'en': 'My Profile',
      'fr': 'Mon profil',
    },
    'lw7bcqx5': {
      'en': 'ADMIN',
      'fr': 'ADMIN',
    },
    'lnsvlqtg': {
      'en': 'Account Settings',
      'fr': 'Paramètres du compte',
    },
    'mb577qax': {
      'en': 'Preferences',
      'fr': 'Préférences',
    },
    'vos7gfr9': {
      'en': 'Language',
      'fr': 'Langue',
    },
    'btdw3yse': {
      'en': 'Frensh',
      'fr': 'Français',
    },
    'jlszpjnq': {
      'en': 'English',
      'fr': 'Anglais',
    },
    '9awlksdo': {
      'en': 'Search...',
      'fr': 'Recherche...',
    },
    'wlxlv06b': {
      'en': 'Frensh',
      'fr': 'Français',
    },
    'mwhc429n': {
      'en': 'English',
      'fr': 'Anglais',
    },
    '2gk9x979': {
      'en': 'Log out',
      'fr': 'Déconnexion',
    },
  },
  // ProductInventory
  {
    'xkyrkbsl': {
      'en': '124 Products',
      'fr': '124 produits',
    },
    'glv7u2d9': {
      'en': 'Sort by: Newest',
      'fr': 'Trier par : Plus récent',
    },
    'acb92p0v': {
      'en': 'Total Valuation',
      'fr': 'Évaluation totale',
    },
    'sa6o3kgj': {
      'en': '142,500 TND',
      'fr': '142 500 TND',
    },
  },
  // ProductDetailsEditor
  {
    'tmly39jh': {
      'en': 'Product Details',
      'fr': 'Détails du produit',
    },
    's8sd78ud': {
      'en': 'CHANEL',
      'fr': 'CHANEL',
    },
    '0scqj0y5': {
      'en': 'Bleu de Chanel',
      'fr': 'Bleu de Chanel',
    },
    'y9p98w76': {
      'en': 'Eau de Parfum • Men',
      'fr': 'Eau de Parfum • Hommes',
    },
    'lyj5hofs': {
      'en': 'In Stock',
      'fr': 'En stock',
    },
    'ag558u0q': {
      'en': '425.000 TND',
      'fr': '425 000 TND',
    },
    'x83v39lv': {
      'en': 'General Information',
      'fr': 'Informations générales',
    },
    'v7za94l1': {
      'en': 'Woody',
      'fr': 'Boisé',
    },
    'k4abcjlb': {
      'en': 'Woody',
      'fr': 'Boisé',
    },
    'nb64e2ao': {
      'en': 'Category',
      'fr': 'Catégorie',
    },
    '0kmdyzzb': {
      'en': 'Woody',
      'fr': 'Boisé',
    },
    '9v3l8jtj': {
      'en': 'Floral',
      'fr': 'Floral',
    },
    '6gc013yw': {
      'en': 'Oriental',
      'fr': 'Oriental',
    },
    '93rqk3l1': {
      'en': 'Citrus',
      'fr': 'Agrumes',
    },
    'zytsxkui': {
      'en': '100 ml',
      'fr': '100 ml',
    },
    'tumhewug': {
      'en': '30 ml',
      'fr': '30 ml',
    },
    '0743gm5k': {
      'en': 'Volume',
      'fr': 'Volume',
    },
    '0f83khd6': {
      'en': '30 ml',
      'fr': '30 ml',
    },
    '9tt7iggm': {
      'en': '50 ml',
      'fr': '50 ml',
    },
    'bv1udk29': {
      'en': '100 ml',
      'fr': '100 ml',
    },
    '8lk7tq0j': {
      'en': '150 ml',
      'fr': '150 ml',
    },
    '68yq4y9b': {
      'en': 'Fragrance Notes',
      'fr': 'Notes olfactives',
    },
    '72xlei98': {
      'en': 'Inventory & Pricing',
      'fr': 'Inventaire et prix',
    },
    'rqepdthw': {
      'en': 'Description',
      'fr': 'Description',
    },
    'bq304n27': {
      'en': 'Danger Zone',
      'fr': 'Zone de danger',
    },
    'zfiqnc8b': {
      'en':
          'Deleting this product will remove all associated sales history and stock records.',
      'fr':
          'La suppression de ce produit entraînera la suppression de tout l\'historique des ventes et des données de stock associés.',
    },
  },
  // Panier
  {
    '3kxt5xci': {
      'en': 'Point of Sale',
      'fr': 'Point de vente',
    },
    'y917bcu7': {
      'en': 'Transaction #8429',
      'fr': 'Transaction n° 8429',
    },
    'uzoc0wx7': {
      'en': 'Current Cart (3)',
      'fr': 'Panier actuel (3)',
    },
    '2tt2670k': {
      'en': 'Clear All',
      'fr': 'Effacer tout',
    },
    'w77d97ns': {
      'en': 'Payment Method',
      'fr': 'Mode de paiement',
    },
    'ty4yxbqu': {
      'en': 'Subtotal',
      'fr': 'Total',
    },
    'maqnbn1r': {
      'en': '1,370.000 TND',
      'fr': '1 370 000 TND',
    },
    '3t43ydna': {
      'en': 'Tax (TVA 13%)',
      'fr': 'Taxe (TVA 13%)',
    },
    'l6xvw00w': {
      'en': '178.100 TND',
      'fr': '178 100 TND',
    },
    '4pn3ifxw': {
      'en': 'Total Amount',
      'fr': 'Montant total',
    },
    'xd6izwal': {
      'en': '1,548.100 TND',
      'fr': '1 548 100 TND',
    },
  },
  // SalesHistory
  {
    '17z8gklj': {
      'en': 'Sales History',
      'fr': 'Historique des ventes',
    },
    '07ythqvx': {
      'en': 'Total Sales (Today)',
      'fr': 'Ventes totales (aujourd\'hui)',
    },
    'aiakjmq1': {
      'en': '4,250.000 TND',
      'fr': '4 250 000 TND',
    },
    'seds2j12': {
      'en': '+12%',
      'fr': '+12%',
    },
    'k9y4sf6v': {
      'en': 'Recent Transactions',
      'fr': 'Transactions récentes',
    },
  },
  // SupplierOrderManagement
  {
    'jid9d1rb': {
      'en': 'Partners & Supply',
      'fr': 'Partenaires et fournisseurs',
    },
    't4ywrfjw': {
      'en': 'Manage your luxury fragrance sources',
      'fr': 'Gérez vos sources de parfums de luxe',
    },
    'xiysj6g0': {
      'en': 'Top Suppliers',
      'fr': 'Meilleurs fournisseurs',
    },
    'rg4qgzg7': {
      'en': 'View All',
      'fr': 'Afficher tout',
    },
    'qbsfzzb3': {
      'en': 'Recent Orders',
      'fr': 'Commandes récentes',
    },
    'mh8ackad': {
      'en': 'Track All',
      'fr': 'Tout suivre',
    },
    'sxw5tcwu': {
      'en': 'Low Stock Alert',
      'fr': 'Alerte stock faible',
    },
    'tw29fbiz': {
      'en': '5 items from \'Niche\' category are below threshold.',
      'fr': '5 articles de la catégorie « Niche » sont en dessous du seuil.',
    },
    'llcwrdnm': {
      'en': 'Total Monthly Spend',
      'fr': 'Dépenses mensuelles totales',
    },
    'hpn4sfir': {
      'en': '16,370 TND',
      'fr': '16 370 TND',
    },
  },
  // SingUP
  {
    'c1up7bh9': {
      'en': 'Welcome',
      'fr': 'Accueillir',
    },
    '15ew2xgl': {
      'en': 'Sign in to manage your boutique',
      'fr': 'Connectez-vous pour gérer votre boutique',
    },
    'z4zv7sx0': {
      'en': 'Login',
      'fr': 'Se connecter',
    },
    'g2pwwigj': {
      'en': 'Register',
      'fr': 'Registre',
    },
    'y0m3gkey': {
      'en': 'Name ',
      'fr': 'Nom',
    },
    'g6ilim3q': {
      'en': 'Phone number',
      'fr': 'Numéro de téléphone',
    },
    'i8r37co6': {
      'en': 'Email Address',
      'fr': 'Adresse email',
    },
    'suzmru80': {
      'en': 'Password',
      'fr': 'Mot de passe',
    },
    'c4w7eefz': {
      'en': 'Confirmed Password',
      'fr': 'Mot de passe confirmé',
    },
    '0t0pjjjk': {
      'en': 'Name is required',
      'fr': 'Le nom est requis.',
    },
    '824yqaiy': {
      'en': 'Name requires minimum of 2 lettres',
      'fr': 'Le nom doit comporter au minimum 2 lettres.',
    },
    'gqjwbvvr': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    '5abs92ih': {
      'en': 'Number is required',
      'fr': 'Un numéro est requis.',
    },
    'xl1zhr9e': {
      'en': 'Invalid number(8 numbers, ex : 22123456)',
      'fr': 'Numéro invalide (8 chiffres, ex : 22123456)',
    },
    'g6p6sybh': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    '0h5944zt': {
      'en': 'Email is required',
      'fr': 'L\'adresse électronique est requise.',
    },
    '2gdftyze': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    '8000mdw2': {
      'en': 'Password is required',
      'fr': 'Un mot de passe est requis.',
    },
    's0vjqj44': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    'f2h86s7u': {
      'en': 'Confirm your password',
      'fr': 'Confirmez votre mot de passe',
    },
    'o6lax9m9': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    'k9bkh888': {
      'en': 'Anglais | Français ',
      'fr': 'Anglais | Français',
    },
  },
  // ForgotPasswordPage
  {
    '8jphympr': {
      'en': 'Forgot your password',
      'fr': 'Mot de passe oublié',
    },
    '4i1ubh2v': {
      'en':
          'Don\'t worry ! Just fill in your email and we\'ll send you a link to reset your password.',
      'fr':
          'Pas de souci ! Il vous suffit de saisir votre adresse e-mail et nous vous enverrons un lien pour réinitialiser votre mot de passe.',
    },
    'c9lqsxib': {
      'en': 'Email Address',
      'fr': 'Adresse email',
    },
    'gqmllya0': {
      'en': 'Back To Login',
      'fr': 'Retour à la page de connexion',
    },
    'tg8xqgt3': {
      'en': 'Don\'t have an account?',
      'fr': 'Vous n\'avez pas de compte ?',
    },
    'awsbblhl': {
      'en': 'Create account',
      'fr': 'Créer un compte',
    },
    'lypwfgvi': {
      'en': 'Anglais | Français ',
      'fr': 'Anglais | Français',
    },
  },
  // Personalinformation
  {
    '5tex6be6': {
      'en': 'Personal Information',
      'fr': 'Informations personnelles',
    },
    '5xmea3m5': {
      'en': 'General Information',
      'fr': 'Informations générales',
    },
    '1d5o1tbs': {
      'en': 'Email Address',
      'fr': 'Adresse email',
    },
    'tsa4ugzj': {
      'en': 'Date de naissance',
      'fr': 'Date de naissance',
    },
    'gp5zbehw': {
      'en': 'Phone number',
      'fr': 'Numéro de téléphone',
    },
    'qkcrv5pa': {
      'en': 'sexe',
      'fr': 'sexe',
    },
    '422e77qe': {
      'en': 'Adress Information',
      'fr': 'Informations sur l\'adresse',
    },
    '4sjxceka': {
      'en': 'Region',
      'fr': 'Région',
    },
    '4j0y8aa5': {
      'en': 'City',
      'fr': 'Ville',
    },
    'fb59wtdf': {
      'en': 'Postal code',
      'fr': 'Code Postal',
    },
    'v2cjzwvk': {
      'en': 'value is required',
      'fr': 'L\'adresse électronique est requise.',
    },
    '5ose3s7a': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    'dxaimq5u': {
      'en': 'value is required',
      'fr': 'une valeur est requise',
    },
    'tv5tlbgd': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    '9ykw5w35': {
      'en': 'value is required',
      'fr': 'une valeur est requise',
    },
    'xv1fa343': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
  },
  // ProductInventoryCopy
  {
    '0rwxx9vd': {
      'en': '124 Products',
      'fr': '124 produits',
    },
    '35p39gaf': {
      'en': 'Sort by: Newest',
      'fr': 'Trier par : Plus récent',
    },
  },
  // acceuil
  {
    '4jzbhcw3': {
      'en': 'Nouveauté',
      'fr': 'Nouveauté',
    },
  },
  // menu
  {
    '7xcr95wl': {
      'en': 'Homme',
      'fr': 'Homme',
    },
    '022rbqsc': {
      'en': 'Search product...',
      'fr': 'Rechercher un produit...',
    },
    'l2lmysdt': {
      'en': 'Nouveautés',
      'fr': 'Nouveautés',
    },
    'p6asnd3x': {
      'en': 'Collections',
      'fr': 'Collections',
    },
    '0j4238dj': {
      'en': 'Home',
      'fr': 'Maison',
    },
    'eudkr9pw': {
      'en': 'Menu',
      'fr': 'Menu',
    },
    'rtuue80m': {
      'en': 'My cart',
      'fr': 'Mon panier',
    },
    '7oqkelpb': {
      'en': 'Account',
      'fr': 'Compte',
    },
    'k75oqnd7': {
      'en': 'Back',
      'fr': 'Dos',
    },
    'zqh3c3sk': {
      'en': 'Menu',
      'fr': 'Menu',
    },
  },
  // securityinformations
  {
    'pd86i7jh': {
      'en': 'Security Information',
      'fr': 'Informations personnelles',
    },
    't5qe4wyb': {
      'en': 'Edit password',
      'fr': 'Informations générales',
    },
    '3h9zt4to': {
      'en': 'New password',
      'fr': 'Adresse email',
    },
    '47p5qacp': {
      'en': 'confirm password',
      'fr': 'Numéro de téléphone',
    },
    'sql03vb4': {
      'en': 'value is required',
      'fr': 'L\'adresse électronique est requise.',
    },
    'ju06dkl8': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    'ocw0zf9y': {
      'en': 'value is required',
      'fr': 'une valeur est requise',
    },
    '4byyqv21': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans le menu déroulant.',
    },
    '3xiwrtkz': {
      'en': 'Edit password',
      'fr': 'Informations générales',
    },
    'onij5wlv': {
      'en': 'New password',
      'fr': 'Adresse email',
    },
    '4zxls7lp': {
      'en': 'confirm password',
      'fr': 'Numéro de téléphone',
    },
  },
  // menuCopy
  {
    'mz9dtqwy': {
      'en': 'Femme',
      'fr': '',
    },
    'h7360dad': {
      'en': 'Search product...',
      'fr': 'Rechercher un produit...',
    },
    'zyebliaf': {
      'en': 'Nouveautés',
      'fr': 'Nouveautés',
    },
    'iczq66ku': {
      'en': 'Collections',
      'fr': 'Collections',
    },
    'sf53hzxh': {
      'en': 'Soin',
      'fr': 'Soin',
    },
    '2fpsnapt': {
      'en': 'Home',
      'fr': 'Maison',
    },
    'fpzdjdj7': {
      'en': 'Menu',
      'fr': 'Menu',
    },
    '8c6cu83b': {
      'en': 'My cart',
      'fr': 'Mon panier',
    },
    's4pzejio': {
      'en': 'Account',
      'fr': 'Compte',
    },
    'rtocdvh9': {
      'en': 'Back',
      'fr': 'Dos',
    },
    'r0n35s67': {
      'en': 'Menu',
      'fr': 'Menu',
    },
  },
  // Button
  {
    'eghzrx90': {
      'en': 'Sign in',
      'fr': 'Se connecter',
    },
  },
  // StockItem
  {
    'is6yv5uy': {
      'en': 'Low Stock',
      'fr': 'Stock faible',
    },
  },
  // SupplierCard
  {
    'aci9iypc': {
      'en': 'Main Brands',
      'fr': 'Marques principales',
    },
    'i8fb5c8t': {
      'en': 'Contact',
      'fr': 'Contact',
    },
  },
  // ButtonSignup
  {
    'nbp1sfbi': {
      'en': 'Sign Up',
      'fr': 'S\'inscrire',
    },
  },
  // ButtonMotPasseOublie
  {
    '17e81fi5': {
      'en': 'Reset Password',
      'fr': 'Réinitialiser le mot de passe',
    },
  },
  // ButtonEnergistrer
  {
    '4v1mhfvn': {
      'en': 'Submit',
      'fr': 'Soumettre',
    },
  },
  // Miscellaneous
  {
    '0gjr1v6a': {
      'en': '',
      'fr':
          'Pour prendre une photo ou une vidéo, cette application nécessite l\'autorisation d\'accéder à la caméra.',
    },
    'yk0mnznb': {
      'en': '',
      'fr':
          'Pour enregistrer l\'audio de la vidéo, cette application nécessite l\'autorisation d\'accéder au microphone.',
    },
    'd1hjtkep': {
      'en': '',
      'fr':
          'Pour télécharger des données, cette application nécessite l\'autorisation d\'accéder à la photothèque.',
    },
    'lvw51ni9': {
      'en': '',
      'fr': '',
    },
    '5ckg8ahh': {
      'en': '',
      'fr': '',
    },
    'fmrwnrnc': {
      'en': '',
      'fr': '',
    },
    '005vku53': {
      'en': '',
      'fr': '',
    },
    '53lgq6sn': {
      'en': '',
      'fr': '',
    },
    'j3n654vv': {
      'en': '',
      'fr': '',
    },
    'r4bkf6nz': {
      'en': '',
      'fr': '',
    },
    'ezif4s84': {
      'en': '',
      'fr': '',
    },
    'cd8suuxv': {
      'en': '',
      'fr': '',
    },
    'ho93s4h2': {
      'en': '',
      'fr': '',
    },
    'lmkx4wog': {
      'en': '',
      'fr': '',
    },
    '7aki610g': {
      'en': '',
      'fr': '',
    },
    'oc4u9ge6': {
      'en': '',
      'fr': '',
    },
    'nrensdml': {
      'en': '',
      'fr': '',
    },
    'cpkdkd79': {
      'en': '',
      'fr': '',
    },
    'm38l4cqo': {
      'en': '',
      'fr': '',
    },
    'vwkof2se': {
      'en': '',
      'fr': '',
    },
    'yh2jn0rw': {
      'en': '',
      'fr': '',
    },
    'ite4citm': {
      'en': '',
      'fr': '',
    },
    'xvvr3sks': {
      'en': '',
      'fr': '',
    },
    'uw4z8qm0': {
      'en': '',
      'fr': '',
    },
    'v0sax5au': {
      'en': '',
      'fr': '',
    },
    'z5n9m3he': {
      'en': '',
      'fr': '',
    },
    'lc2jdz2e': {
      'en': '',
      'fr': '',
    },
    'wp8bp8t3': {
      'en': '',
      'fr': '',
    },
    'at0wi6fw': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
