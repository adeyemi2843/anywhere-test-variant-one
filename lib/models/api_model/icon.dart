class Icon{
  Icon({this.height,this.url, this.width});

factory Icon.fromJson(dynamic json){
  return Icon(height: json["Height"],url: json["URL"],width: json["Width"]);
}

  String? height;
  String? url;
  String? width;

  
}