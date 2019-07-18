class DiscoverData {
  String icon;
  String title;
  int position;

  DiscoverData(this.icon, this.title, this.position);
}

List<DiscoverData> discoverData = [
  DiscoverData('icon_friends.png', 'Moments', 1),
  DiscoverData('icon_scan.png', 'Scan', 2),
  DiscoverData('icon_shake.png', 'Shake', 2),
  DiscoverData('icon_look.png', 'Top Stories', 3),
  DiscoverData('icon_search.png', 'Search', 3),
  DiscoverData('icon_near.png', 'People Nearby', 4),
  DiscoverData('icon_bottle.png', 'Message in a Bottle', 4),
  DiscoverData('icon_game.png', 'Games', 5),
  DiscoverData('icon_shop.png', 'Mini Programs', 6),
];