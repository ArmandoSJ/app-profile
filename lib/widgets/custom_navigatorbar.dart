import 'package:app_profile/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CustomNavigationBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: ( int i ) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon( Icons.map ),
          label: 'Feed'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.compass_calibration ),
          label: 'Friends'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.compass_calibration ),
          label: 'Messages'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.compass_calibration ),
          label: 'Settings'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.verified_user ),
          label: 'Profile'
        ),
      ],
    );
  }
}

