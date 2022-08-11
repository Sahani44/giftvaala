class Policy{
  late String title;
  late String text;

  Policy(this.text,this.title);

  Policy.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
  }
}