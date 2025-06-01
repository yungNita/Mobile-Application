import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Entry point
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const MyApp(),
    ),
  );
}

// App state for language and theme
class AppState extends ChangeNotifier {
  Locale _locale = const Locale('en');
  bool _isDarkMode = false;

  Locale get locale => _locale;
  bool get isDarkMode => _isDarkMode;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

// Main app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: appState.locale,
      theme: ThemeData(
        brightness: appState.isDarkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(),
    );
  }
}

// Language texts
Map<String, Map<String, String>> texts = {
  'en': {
    'title': 'Log in',
    'hello': 'Hello!',
    'username': 'Username',
    'password': 'Password',
    'login': 'Log in',
    'darkMode': 'Dark Mode',
  },
  'fr': {
    'title': 'Connexion',
    'hello': 'Salut!',
    'username': "Nom d'utilisateur",
    'password': 'Mot de passe',
    'login': 'Connexion',
    'darkMode': 'Mode sombre',
  },
  'kh': {
    'title': 'ចូល',
    'hello': 'សួស្តី!',
    'username': 'ឈ្មោះអ្នកប្រើប្រាស់',
    'password': 'ពាក្យសម្ងាត់',
    'login': 'ចូល',
    'darkMode': 'ម៉ូតងងឹត',
  },
};

// Login page
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    String langCode = appState.locale.languageCode;
    final text = texts[langCode]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          text['title']!,
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/image.png',
                  width: 200,
                  height: 200,
                ),
                Text(
                  text['hello']!,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: text['username'],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: text['password'],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {},
                child: Text(
                  text['login']!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                langButton(context, 'en', '🇬🇧'),
                langButton(context, 'fr', '🇫🇷'),
                langButton(context, 'kh', '🇰🇭'),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text['darkMode']!),
                Switch(
                  value: appState.isDarkMode,
                  onChanged: (_) => appState.toggleDarkMode(),
                  activeColor: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget langButton(BuildContext context, String code, String flag) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.locale.languageCode == code;

    return TextButton(
      onPressed: () => appState.setLocale(Locale(code)),
      style: TextButton.styleFrom(
        foregroundColor: isSelected ? Colors.orange : Colors.grey,
      ),
      child: Row(
        children: [
          Text(
            code.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(flag, style: const TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
