import 'package:get/get.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // menu items
          'dashboard': 'Dashboard',
          'sock_maneger': 'Stock Maneger',
          'add_product': 'Add Product',
          'category_maneger': 'Cateory Maneger',
          'distributor_apply': 'Apply For Distributorship',
          'store': 'Store',
          'wallet': 'Wallet',
          // statusbar item
          'overview': 'Overview',
          'today_profit': 'Today Profit',
          'today_sale': 'Today Sale',
          'today_due': 'Today Due',
          'total_stock': 'Total Stock',
          // category maneger
          'dont_have_category': 'You Dont Have Any Category',
          'add_category': 'Add New Category'
        },
        'bn_BD': {}
      };
}
