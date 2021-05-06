import 'package:eshop/components/coustom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:eshop/widgets/home_body.dart';
import '../../screens/cart/cart_screen.dart';
import '../../screens/sign_in/Sign_in_screen.dart';

import '../../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 50.0,
              child: DrawerHeader(
                  child: Center(
                    child: Text('E-shop', style: TextStyle(fontSize: 18.8)),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)),
            ),
            ListTile(
                title: Text('Cart'),
                leading: Icon(Icons.shopping_cart),
                onTap: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                }),
            ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context).pushNamed(SignInScreen.routeName);
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'E-shop',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
