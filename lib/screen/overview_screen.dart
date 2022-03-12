import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OverviewScreen extends StatelessWidget {
  static const String routeName = "/Overview";
  final List<ListItem> items;

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => OverviewScreen(
        items: List<ListItem>.generate(1000, (i) => HeadingItem("$i")),
      ),
      settings: const RouteSettings(name: routeName),
    );
  }

  const OverviewScreen({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColorDark,
            title: const Text("Overview"),
            pinned: false,
            floating: true,
            snap: false,
            forceElevated: innerBoxIsScrolled,
          ),
        ];
      },
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridView.custom(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                const QuiltedGridTile(2, 2),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 2),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset(
                        "images/eren.jpeg",
                      ),
                    ),
                childCount: 20),
          ),
        ),
      ),
    );

    // MediaQuery.removePadding(
    //   context: context,
    //   removeTop: true,
    //   child: Padding(
    //     padding: const EdgeInsets.all(4.0),
    //     child: GridView.custom(
    //       gridDelegate: SliverQuiltedGridDelegate(
    //         crossAxisCount: 4,
    //         mainAxisSpacing: 4,
    //         crossAxisSpacing: 4,
    //         repeatPattern: QuiltedGridRepeatPattern.inverted,
    //         pattern: [
    //           const QuiltedGridTile(2, 2),
    //           const QuiltedGridTile(1, 1),
    //           const QuiltedGridTile(1, 1),
    //           const QuiltedGridTile(1, 2),
    //         ],
    //       ),
    //       childrenDelegate: SliverChildBuilderDelegate(
    //           (context, index) => FittedBox(
    //                 fit: BoxFit.fill,
    //                 child: Image.asset(
    //                   "images/eren.jpeg",
    //                 ),
    //               ),
    //           childCount: 20),
    //     ),
    //   ),
    // );

    // ListView.builder(
    //   key: const PageStorageKey<String>("overview"),
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     final item = items[index];

    //     return ListTile(
    //       title: item.buildTitle(context),
    //       subtitle: item.buildSubtitle(context),
    //     );
    //   },
    // );
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
      style: Theme.of(context).textTheme.headline5,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
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
