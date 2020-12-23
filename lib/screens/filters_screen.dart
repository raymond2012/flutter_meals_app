import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
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
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meal.',
                  _glutenFree,
                  (newState) {
                    setState(() {
                      _glutenFree = newState;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meal.',
                  _vegetarian,
                  (newState) {
                    setState(() {
                      _vegetarian = newState;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meal.',
                  _vegan,
                  (newState) {
                    setState(() {
                      _vegan = newState;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'LactoseFree',
                  'Only include lactoseFree meal.',
                  _lactoseFree,
                  (newState) {
                    setState(() {
                      _lactoseFree = newState;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
