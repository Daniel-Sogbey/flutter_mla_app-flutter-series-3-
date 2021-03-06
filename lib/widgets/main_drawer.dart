import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildDrawerLink(String text, Function onTapHandler, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26.0,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Cooking Up!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          _buildDrawerLink(
            'Meal',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            Icons.restaurant,
          ),
          _buildDrawerLink(
            'Filters',
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
            Icons.settings,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.58,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Version: ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                '1.0.0',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 5.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
