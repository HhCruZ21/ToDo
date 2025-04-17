import 'package:flutter/material.dart';

import '../../../config/routes.dart';
import '../../../widgets/show_dialog.dart';
import '../../../widgets/text_widgets.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({super.key});

  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      iconColor: Theme.of(context).colorScheme.primary,
      onSelected: (value) {
        if (value == 'notifications') {
          // Handle notifications action
          showCustomDialog(
            context: context,
            title: BodyLargeText('Notifications'),
            content: BodyMediumText('You have no new notifications.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: BodyMediumText('Close'),
              ),
            ],
          );
        } else if (value == 'logout') {
          // Handle logout action
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: BodyLargeText('Logout'),
              content: BodyMediumText('Are you sure you want to logout?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: BodyMediumText('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Routes.login);
                  },
                  child: BodyMediumText('Logout'),
                ),
              ],
            ),
          );
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'notifications',
          child: Row(
            children: [
              Icon(
                Icons.notifications,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 4),
              BodyMediumText(
                'Notifications',
                textColor: Theme.of(context).colorScheme.primary,
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 'logout',
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
              const SizedBox(width: 4),
              BodyMediumText(
                'Logout',
                textColor: Theme.of(context).colorScheme.error,
              )
            ],
          ),
        ),
      ],
    );
  }
}
