class Project {
  final String id;
  final String nodeId;
  final String name;
  final String fullName;
  final bool isPrivate;
  final String htmlUrl;
  // final String description;
  final String url;

  Project({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.isPrivate,
    required this.htmlUrl,
    // required this.description,
    required this.url,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json["id"].toString(),
      nodeId: json['node_id'].toString(),
      name: json['name'],
      fullName: json['full_name'],
      isPrivate: json['private'],
      htmlUrl: json['html_url'],
      // description: json['description'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'full_name': fullName,
      'private': isPrivate,
      'html_url': htmlUrl,
      // 'description': description,
      'url': url,
    };
  }
}
