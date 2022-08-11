
class CategoryListItem {

  CategoryListItem(this.buildTitle,this.backGroundImage,this.redirectRoute);

  late final String buildTitle;

  late final String backGroundImage ;

  late final String redirectRoute  ;


  static List<CategoryListItem> items = [
      CategoryListItem('Men', 'assets/giftvaalaLogo.png', '/contact'),
      CategoryListItem('Women', 'assets/giftvaalaLogo.png', '/policies'),
      CategoryListItem('Kids', 'assets/giftvaalaLogo.png', '/contact'),
      CategoryListItem('Room Decor', 'assets/giftvaalaLogo.png', '/policies'),
      CategoryListItem('Wall Decor', 'assets/giftvaalaLogo.png', '/contact'),
      CategoryListItem('Lifestyle Accessories', 'assets/giftvaalaLogo.png', '/policies'),
      CategoryListItem('Corporate Gifts', 'assets/giftvaalaLogo.png', '/contact'),
      CategoryListItem('Combo', 'assets/giftvaalaLogo.png', '/policies'),
      CategoryListItem('3D Gifts', 'assets/giftvaalaLogo.png', '/contact'),
      CategoryListItem('Bottles', 'assets/giftvaalaLogo.png', '/policies'),
      CategoryListItem('Mobile Cover', 'assets/giftvaalaLogo.png', '/contact'),
      CategoryListItem('Other', 'assets/giftvaalaLogo.png', '/policies'),
    ];

}


