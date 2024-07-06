class Stock {
  final String title;
  final String asset;
  final double price;
  final double grow;

  Stock({
    required this.title,
    required this.asset,
    required this.price,
    required this.grow,
  });
}

List<Stock> stocks = [
  Stock(
    title: 'Finance',
    asset: 'stock1',
    price: 180,
    grow: -20,
  ),
  Stock(
    title: 'Technology',
    asset: 'stock2',
    price: 190,
    grow: 0,
  ),
  Stock(
    title: 'Medicine',
    asset: 'stock3',
    price: 170,
    grow: 0,
  ),
  Stock(
    title: 'Energy',
    asset: 'stock4',
    price: 185,
    grow: 0,
  ),
  Stock(
    title: 'Space',
    asset: 'stock5',
    price: 200,
    grow: 0,
  ),
];
