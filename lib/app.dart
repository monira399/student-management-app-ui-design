import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/ui/provider/student_provider.dart';
import 'package:ui_design/ui/provider/theme_provider.dart';
import 'package:ui_design/ui/screens/bottom_navigation_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(create: (_) => StudentProvider(),
        ),

      ],
        child: Builder(
          builder: (context) {
            return MaterialApp(
              theme: ThemeData(
                brightness: Brightness.light,

                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,

                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: const Color(0xff2C2C2C),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.white24),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              themeMode: context.watch<ThemeProvider>().themeMode,
              color: Colors.green.shade50,
              home: BottomNavigationScreen(),
            );
          },
        ),
    );
  }
}
