import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:garduation/constants/colors.dart';
import 'package:garduation/constants/components.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

import 'leaflet_map_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [];

  SearchScreenState();

  Future<void> _fetchSuggestions(String query) async {
    final url = 'https://nominatim.openstreetmap.org/search?format=json&q=$query';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      setState(() {
        _suggestions = data.map((item) => item['display_name'] as String).toList();
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(padding(context)),
            child: Column(
              children: [
                Text(
                  'Search for the place you want to see the parkings in:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: defaultColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      _fetchSuggestions(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Search',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _suggestions.clear();
                          });
                        },
                      ),
                    ),
                  ),
                ),
                if (_searchController.text.isEmpty || _suggestions.isEmpty)
                  Expanded(
                    child: Center(
                      child: Lottie.asset(
                        'assets/lotties/search_empty.json',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                if (_searchController.text.isNotEmpty && _suggestions.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: _suggestions.length,
                      itemBuilder: (context, index) {
                        final suggestion = _suggestions[index];
                        return ListTile(
                          title: Text(suggestion),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapScreen(searchedPlace: suggestion),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
