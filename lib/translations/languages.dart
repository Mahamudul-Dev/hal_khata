import 'package:get/get.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // menu items
          'dashboard': 'Dashboard',
          'sock_maneger': 'Stock Maneger',
          'sale_product': 'Sale Product',
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
          'add_category': 'Add New Category',
          'select_unit': 'Select Unit',
          'category_name': 'Category Name',
          // stock maneger
          'supplier_name': 'Supplier Name',
          'product_name': 'Product Name',
          'add_new_stock': 'Add New Stock',
          'choose_category': 'Choose Category',
          'no_category': 'Dont Have Any Category',
          'quantity': 'Quantity',
          'add_stock': 'Add Stock',
          // pos maneger
          'pos_maneger': 'POS Maneger',
          'categoties': 'Categories',
          'see_all': 'See All',
          // others
          'delete': 'Delete',
          'cancel': 'Cancel',
          'ok': 'Ok',
          'add': 'Add',
          // units
          'pcs': 'pcs',
          'ltr': 'ltr',
          'kg': 'kg',
          'pack': 'pack',
          'dozens': 'dozens'
        },
        'bn_BD': {}
      };
}
