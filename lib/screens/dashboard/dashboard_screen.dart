import 'package:admin_recolt/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../../widgets/constants.dart';
import 'components/header.dart';

import 'components/recent_users.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                     RecentUsers(),
                         SizedBox(height: defaultPadding),
                        RecentUsers2(),
                        SizedBox(height: defaultPadding),
                        
                        ListUserEntreprise(),
                        SizedBox(height: defaultPadding),
                        ListUserCollab(),
                        SizedBox(height: defaultPadding),
                        ListUserProd(),
                      
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
               
              ],
            )
          ],
        ),
      ),
    );
  }
}
