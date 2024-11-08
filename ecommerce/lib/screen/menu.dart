import 'package:flutter/material.dart';
import 'package:ecommerce/widget/left_drawer.dart';
import 'package:ecommerce/widget/product_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String clientId = '2406394881'; // Client Id
  final String name = 'Naïm Baziz'; // Name
  final String userType = 'Premium'; // User Type
  final List<ItemHomepage> items = [
    ItemHomepage("View Product", Icons.mood, Colors.blue),
    ItemHomepage("Add Product", Icons.add, Colors.white),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic structure of the page with the AppBar and body.
    return Scaffold(
      // AppBar is the top part of the page that displays the title.
      appBar: AppBar(
        // The title of the application "Mental Health Tracker" with white text and bold font.
        title: const Text(
          'Ecommerce',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        // The background color of the AppBar is obtained from the application theme color scheme.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      // Body of the page with paddings around it.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Place the widget vertically in a column.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row to display 3 InfoCard horizontally.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'Client ID', content: clientId),
                  InfoCard(title: 'Name', content: name),
                  InfoCard(title: 'User Type', content: userType),
                ],
              ),

              // Give a vertical space of 16 units.
              const SizedBox(height: 16.0),

              // Place the following widget in the center of the page.
              Center(
                child: Column(
                  // Place the text and grid item vertically.

                  children: [
                    // Display the welcome message with bold font and size 18.
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Welcome to Ecommerce Mobile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),

                    // Grid to display ItemCard in a 3 column grid.
                    GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      // To ensure that the grid fits its height.
                      shrinkWrap: true,

                      // Display ItemCard for each item in the items list.
                      children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Card information that displays the title and content.

  final String title; // Card title.
  final String content; // Card content.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Create a card box with a shadow.
      elevation: 2.0,
      color: Colors.indigo,
      child: Container(
        // Set the size and spacing within the card.
        width: MediaQuery.of(context).size.width /
            3.5, // Adjust with the width of the device used.
        padding: const EdgeInsets.all(16.0),
        // Place the title and content vertically.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
