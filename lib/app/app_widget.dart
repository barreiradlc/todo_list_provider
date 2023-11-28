import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/database/sqlite_adm_connection.dart';
import 'package:todo_list_provider/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(SqliteAdmConnection());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(SqliteAdmConnection());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo list provider",
      home: SplashPage(),
    );
  }
}
