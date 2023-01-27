import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaleProductScreen extends StatefulWidget {
  const SaleProductScreen({Key? key}) : super(key: key);

  @override
  State<SaleProductScreen> createState() => _SaleProductScreenState();
}

class _SaleProductScreenState extends State<SaleProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: const Icon(
          Icons.shopping_bag,
        ),
        title: Text(
          'pos_maneger'.tr,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 300,
                child: _search(),
              ),
            ],
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 14,
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    childAspectRatio: (1 / 1.2),
                    children: [
                      _item(
                        image:
                            'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                        title: 'Original Burger',
                        price: '\$5.99',
                        item: '11 item',
                      ),
                      _item(
                        image:
                            'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
                        title: 'Double Burger',
                        price: '\$10.99',
                        item: '10 item',
                      ),
                      _item(
                        image:
                            'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
                        title: 'Cheese Burger',
                        price: '\$6.99',
                        item: '7 item',
                      ),
                      _item(
                        image:
                            'https://cdn.pixabay.com/photo/2020/03/21/11/17/burger-4953465__340.jpg',
                        title: 'Double Cheese Burger',
                        price: '\$12.99',
                        item: '20 item',
                      ),
                      _item(
                        image:
                            'https://media.gettyimages.com/id/1254672762/photo/delicious-homemade-hamburger-and-french-fries.jpg?s=612x612&w=gi&k=20&c=7gKvEOXS-TdFFGac5xrh4XW6ZPPZ8wmrerRkTPbrLwY=',
                        title: 'Spicy Burger',
                        price: '\$7.39',
                        item: '12 item',
                      ),
                      _item(
                        image:
                            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                        title: 'Special Black Burger',
                        price: '\$7.39',
                        item: '39 item',
                      ),
                      _item(
                        image:
                            'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                        title: 'Original Burger',
                        price: '\$5.99',
                        item: '11 item',
                      ),
                      _item(
                        image:
                            'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
                        title: 'Double Burger',
                        price: '\$10.99',
                        item: '10 item',
                      ),
                      _item(
                        image:
                            'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
                        title: 'Cheese Burger',
                        price: '\$6.99',
                        item: '7 item',
                      ),
                      _item(
                        image:
                            'https://cdn.pixabay.com/photo/2020/03/21/11/17/burger-4953465__340.jpg',
                        title: 'Double Cheese Burger',
                        price: '\$12.99',
                        item: '20 item',
                      ),
                      _item(
                        image:
                            'https://media.gettyimages.com/id/1254672762/photo/delicious-homemade-hamburger-and-french-fries.jpg?s=612x612&w=gi&k=20&c=7gKvEOXS-TdFFGac5xrh4XW6ZPPZ8wmrerRkTPbrLwY=',
                        title: 'Spicy Burger',
                        price: '\$7.39',
                        item: '12 item',
                      ),
                      _item(
                        image:
                            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                        title: 'Special Black Burger',
                        price: '\$7.39',
                        item: '39 item',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Expanded(flex: 1, child: Container()),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.black,
              ),
              child: Column(
                children: [
                  _topMenu(
                    title: 'Order',
                    subTitle: 'Table 8',
                    action: Container(),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: [
                        _itemOrder(
                          image:
                              'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                          title: 'Orginal Burger',
                          qty: '2',
                          price: '\$5.99',
                        ),
                        _itemOrder(
                          image:
                              'https://img.freepik.com/premium-photo/delicious-grilled-burgers_62847-16.jpg?w=2000',
                          title: 'Double Burger',
                          qty: '3',
                          price: '\$10.99',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xff1f2029),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Sub Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '\$40.32',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Tax',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '\$4.32',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            height: 2,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '\$44.64',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.greenAccent,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.print,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  'Print Bills',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // build widget functions

  Widget _itemOrder({
    required String image,
    required String title,
    required String qty,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xff1f2029),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Text(
            '$qty x',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    required String image,
    required String title,
    required String price,
    required String item,
  }) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                ),
              ),
              Text(
                item,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _topMenu({
    required String title,
    required String subTitle,
    required Widget action,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Color.fromARGB(255, 209, 209, 209),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Expanded(flex: 1, child: Container(width: double.infinity)),
          Expanded(flex: 5, child: action),
        ],
      ),
    );
  }

  Widget _search() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xff1f2029),
        ),
        child: Row(
          children: const [
            Icon(
              Icons.search,
              color: Colors.white54,
            ),
            SizedBox(width: 10),
            Text(
              'Search menu here...',
              style: TextStyle(color: Colors.white54, fontSize: 11),
            )
          ],
        ));
  }
}
