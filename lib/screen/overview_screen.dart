import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:momove/screen/detail_screen.dart';

class OverviewScreen extends StatefulWidget {
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

  OverviewScreen({Key? key, required this.items}) : super(key: key);

  final DoubleHolder offset = DoubleHolder();

  double getOffsetMethod() {
    // print('getOffsetMethod : ' + offset.value.toString());
    return offset.value;
  }

  void setOffsetMethod(double val) {
    print('offset : ' + offset.value.toString());
    offset.value = val;
  }

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  late ScrollController controller;
  void _scrollListener() {
    widget.setOffsetMethod(controller.position.pixels);
  }

  void _forceScroll(double offset) {
    controller.jumpTo(offset);
    print('forceScroll to : ' + offset.toString());
  }

  Future<void> _refresh() {
    return Future.delayed(
      Duration(seconds: 1),
    );
  }

  @override
  void initState() {
    super.initState();

    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
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
        child: RefreshIndicator(
          color: Theme.of(context).primaryColor,
          onRefresh: _refresh,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: GridView.custom(
              key: PageStorageKey<String>("overview"),
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
                  (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                                _forceScroll, widget.getOffsetMethod());
                          }));
                        },
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(
                            "images/eren.jpeg",
                          ),
                        ),
                      ),
                  childCount: 20),
            ),
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

class DoubleHolder {
  double value = 0.0;
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
