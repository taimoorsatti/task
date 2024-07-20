class ChatUsers {
  String? name;
  String? messageText;
  String? imageURL;
  String? time;
  String? totalMsg;
  ChatUsers(
      {this.name, this.messageText, this.imageURL, this.time, this.totalMsg});
}

class ChatMessage {
  String? messageContent;
  String? messageType;
  ChatMessage({this.messageContent, this.messageType});
}
