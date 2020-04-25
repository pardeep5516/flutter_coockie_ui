import 'package:cookie_store/Layouts/bottom_bar.dart';
import 'package:cookie_store/screens/cookie_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: const Color(0xFF545D68),
          ),
          onPressed: () => print('back arrow'),
        ),
        title: Text(
          'Pickup',
          style: const TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: const Color(0xFF545D68),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: const Color(0xFF545D68),
            ),
            onPressed: () => print('notification'),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Categories',
            style: const TextStyle(
              fontFamily: 'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: const Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: const Color(0xFFCDCDCD),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Cookie',
                  style: const TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cookie cake',
                  style: const TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Ice cream',
                  style: const TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                CoockiePage(),
                CoockiePage(),
                CoockiePage(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('FAB button'),
        backgroundColor: const Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
