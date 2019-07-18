class ContactData implements Comparable<ContactData> {
  final String icon;
  final String title;
  final String section;

  const ContactData(this.section, this.icon, this.title);

  @override
  int compareTo(ContactData contactData) {
    return this.section.compareTo(contactData.section);
  }
}

List<ContactData> contactData = [
  ContactData(
    'header',
    'icon_addfriend.png',
    'New Friends',
  ),
  ContactData(
    'header',
    'icon_groupchat.png',
    'Group Chats',
  ),
  ContactData(
    'header',
    'icon_addfriend.png',
    'Tags',
  ),
  ContactData(
    'header',
    'icon_addfriend.png',
    'Official Accounts',
  ),

  ContactData(
    'I',
    'http://img.wxcha.com/file/201808/22/3ba51897b7.jpg?down',
    'Iron Man',
  ),
  ContactData(
    'A',
    'https://img.116s.com/2015-06/17/14345503870001.jpg',
    'American Captain',
  ),
  ContactData(
    'R',
    'http://tupian.qqw21.com/article/UploadPic/2015-1/2015115239982780.png',
    'Raytheon',
  ),
  ContactData(
    'G',
    'https://img.116s.com/2015-06/17/14345503870001.jpg',
    'Giaweis',
  ),
  ContactData(
    'H',
    'https://www.qq745.com/uploads/allimg/dongman/02/0426/ngqm41a2cqd.jpg',
    'Hulk',
  ),
  ContactData(
    'B',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMFC9fdH3Lftcoq66g7nLuE4JmTMmqpZJpYo14rpUl3_XM1eNj',
    'Bat Man',
  ),
  ContactData(
    'S',
    'http://pic2.qqmofasi.com/2015/06/04/1793_w6A722r2jRK7j770n7S0_square.jpg',
    'Shield',
  ),
  ContactData(
    'B',
    'http://www.touxiangdaquan.net/uploads/allimg/c150510/14312454I0550-4L34.png',
    'Black Widow',
  ),
  ContactData(
    'S',
    'http://pnga.mypng.cn/1902/superman.png',
    'Super Man',
  ),
  ContactData(
    'S',
    'http://pic4.qqmofasi.com/2015/11/02/1793_I337EE2nI2cr7h220Z21_square.jpg',
    'Spider Man',
  )
];

