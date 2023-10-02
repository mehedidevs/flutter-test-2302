import 'package:flutter/material.dart';
import 'package:flutter_ui_pad/Cycle.dart';
import 'package:flutter_ui_pad/Home.dart';
import 'package:flutter_ui_pad/Train.dart';

void main() {
  runApp(
    MyApp(
      items: List<ListItem>.generate(
        1000,
        (i) => i % 6 == 0
            ? HeadingItem('Heading $i')
            : MessageItem('Sender $i', 'Message body $i'),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Mixed List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            bottom: const TabBar(

              tabs: [
                Column(
                  children: [
                   Tab(icon: Icon(Icons.directions_car)),
                    Padding(
                      padding: EdgeInsets.only(left: 0, top:0, right:0,bottom:8),
                      child: Text("Home"),
                    ),                  ],
                ),
                Column(
                  children: [
                    Tab(icon: Icon(Icons.directions_transit)),
                    Padding(
                      padding: EdgeInsets.only(left: 0, top:0, right:0,bottom:8),
                      child: Text("Train"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Tab(icon: Icon(Icons.directions_bike)),
                    Padding(
                      padding: EdgeInsets.only(left: 0, top:0, right:0,bottom:8),
                      child: Text("Cycle"),
                    ),
                  ],
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),

          body: TabBarView(
            children: [Home(), Train(), Cycle()],
          ),
          // body: ListView.builder(
          //   // Let the ListView know how many items it needs to build.
          //   itemCount: items.length,
          //   // Provide a builder function. This is where the magic happens.
          //   // Convert each item into a widget based on the type of item it is.
          //   itemBuilder: (context, index) {
          //     final item = items[index];
          //
          //     return ListTile(
          //       title: item.buildTitle(context),
          //       subtitle: item.buildSubtitle(context),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return const SizedBox.shrink();
  }
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
