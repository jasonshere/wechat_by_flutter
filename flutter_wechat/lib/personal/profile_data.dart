class ProfileData {
  String icon;
  String title;
  int position;
  ProfileData(this.icon, this.title, this.position);
}

List<ProfileData> profileData = [
  ProfileData('icon_me_money.png', 'WeChat Pay', 1),
  ProfileData('icon_me_collect.png', 'Favorites', 2),
  ProfileData('icon_me_photo.png', 'My Posts', 3),
  ProfileData('icon_me_card.png', 'Card & Offers', 3),
  ProfileData('icon_me_smile.png', 'Sticker Gallery', 3),
  ProfileData('icon_me_setting.png', 'Setting', 4),
];