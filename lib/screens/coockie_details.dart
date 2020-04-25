import 'package:cookie_store/Layouts/bottom_bar.dart';
import 'package:flutter/material.dart';

class CoockieDetailsPage extends StatelessWidget {
  final String imgPath, coockiePrice, coockieName;

  const CoockieDetailsPage(
      {Key key, this.imgPath, this.coockiePrice, this.coockieName})
      : super(key: key);
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
          onPressed: () => Navigator.pop(context),
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
        children: <Widget>[
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Hero(
            tag: imgPath,
            child: Image.asset(
              imgPath,
              width: 150.0,
              height: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              coockiePrice,
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              coockieName,
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 24.0,
                color: const Color(0xFF575E67),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: Text(
                'Cold, creamy ice cream sabdwitch between delicius deluxe cookie. Pick you favorite deluxe cookies and ice cream flavor.',
                style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: const Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xFFF17532),
              ),
              child: Center(
                child: Text(
                  'Add to cart',
                  style: const TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
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
