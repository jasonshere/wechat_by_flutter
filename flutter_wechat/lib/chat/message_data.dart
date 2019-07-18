class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

List<MessageData> messageData = [
  MessageData(
    'http://img.wxcha.com/file/201808/22/3ba51897b7.jpg?down',
    'Iron Man',
    'Iron',
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
      'https://img.116s.com/2015-06/17/14345503870001.jpg',
      'American Captain',
      'American Captain',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'http://tupian.qqw21.com/article/UploadPic/2015-1/2015115239982780.png',
      'Raytheon',
      'Raytheon',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://img.116s.com/2015-06/17/14345503870001.jpg',
      'Giaweis',
      'Giaweis',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://www.qq745.com/uploads/allimg/dongman/02/0426/ngqm41a2cqd.jpg',
      'Hulk',
      'Mesh',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMFC9fdH3Lftcoq66g7nLuE4JmTMmqpZJpYo14rpUl3_XM1eNj',
      'Bat Man',
      'Richman',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'http://pic2.qqmofasi.com/2015/06/04/1793_w6A722r2jRK7j770n7S0_square.jpg',
      'Shield',
      'Boss',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'http://www.touxiangdaquan.net/uploads/allimg/c150510/14312454I0550-4L34.png',
      'Black Widow',
      'widow',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'http://pnga.mypng.cn/1902/superman.png',
      'Super Man',
      'superman',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'http://pic4.qqmofasi.com/2015/11/02/1793_I337EE2nI2cr7h220Z21_square.jpg',
      'Spider Man',
      'spider',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'http://img.wxcha.com/file/201808/22/0f6e10c53c.jpg?down',
      'Iron Man',
      'Iron',
      DateTime.now(),
      MessageType.CHAT
  ),
];