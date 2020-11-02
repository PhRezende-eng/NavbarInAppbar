import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: NavbarSwipe(),
    ));

class NavbarSwipe extends StatefulWidget {
  @override
  _NavbarSwipeState createState() => _NavbarSwipeState();
}

class _NavbarSwipeState extends State<NavbarSwipe> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Container(
                color: Colors.yellow[200],
                child: FlatButton(
                    onPressed: () {
                      print('object');
                    },
                    child: null),
              ),
              Container(
                color: Colors.orange[400],
              ),
              Container(
                color: Colors.blue[600],
              ),
              Container(
                color: Colors.pink[800],
              ),
            ],
          ),
          // bottomNavigationBar
          appBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
              Tab(
                icon: Icon(Icons.settings),
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.black,
          ),
          backgroundColor: Colors.grey[600],
        ),
      ),
    );
  }
}

// class NavbarSwipe extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         body: TabBarView(
//           children: [
//             Container(
//               color: Colors.grey[200],
//               child: FlatButton(
//                   onPressed: () {
//                     print('object');
//                   },
//                   child: null),
//             ),
//             Container(
//               color: Colors.grey[400],
//             ),
//             Container(
//               color: Colors.grey[600],
//             ),
//             Container(
//               color: Colors.grey[800],
//             ),
//           ],
//         ),
//         // bottomNavigationBar
//         appBar: TabBar(
//           tabs: [
//             Tab(
//               icon: Icon(Icons.home),
//             ),
//             Tab(
//               icon: Icon(Icons.rss_feed),
//             ),
//             Tab(
//               icon: Icon(Icons.perm_identity),
//             ),
//             Tab(
//               icon: Icon(Icons.settings),
//             )
//           ],
//           labelColor: Colors.grey[100],
//           unselectedLabelColor: Colors.grey[100],
//           indicatorSize: TabBarIndicatorSize.label,
//           indicatorPadding: EdgeInsets.all(5.0),
//           indicatorColor: Colors.grey[100],
//         ),
//         backgroundColor: Colors.black,
//       ),
//     );
//   }
// }
