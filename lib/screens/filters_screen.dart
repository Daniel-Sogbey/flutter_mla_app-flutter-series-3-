import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree = false;
  bool _isVegetarian = false;
  bool _isVegan = false;
  bool _isLactoseFree = false;

  Widget _buildSwitchedListTile({
    bool value,
    String title,
    String subTitle,
    Function onUpdateHandler,
  }) {
    return SwitchListTile(
      value: value,
      title: Text(title),
      subtitle: Text(subTitle),
      onChanged: onUpdateHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Filters',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            _buildSwitchedListTile(
                title: 'Gluten-Free',
                subTitle: 'Include gluten-free meals only',
                value: _isGlutenFree,
                onUpdateHandler: (newValue) {
                  setState(() {
                    _isGlutenFree = newValue;
                  });
                }),
            _buildSwitchedListTile(
                title: 'Vegan',
                subTitle: 'Include vegan meals only',
                value: _isVegan,
                onUpdateHandler: (newValue) {
                  setState(() {
                    _isVegan = newValue;
                  });
                }),
            _buildSwitchedListTile(
                title: 'Vegetarian',
                subTitle: 'Include vegetarian meals only',
                value: _isVegetarian,
                onUpdateHandler: (newValue) {
                  setState(() {
                    _isVegetarian = newValue;
                  });
                }),
            _buildSwitchedListTile(
                title: 'Lactose-Free',
                subTitle: 'Include lactose-free meals only',
                value: _isLactoseFree,
                onUpdateHandler: (newValue) {
                  setState(() {
                    _isLactoseFree = newValue;
                  });
                }),
          ],
        ));
  }
}
