import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controllers.dart';
import '../responsive.dart';
import 'components/components.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Dashboard()
            ),
          ],
        ),
      ),
    );
  }
}