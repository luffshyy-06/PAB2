class News {
  final String id;
  final String title;
  final Details details;

  News({
    required this.id,
    required this.title,
    required this.details,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      title: json['title'],
      details: Details.fromJson(json['details']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'details': details.toJson(),
    };
  }
}

class Details {
  final String description;
  final List<String> tags;
  final Author author;
  final List<String> releaseDate;

  Details({
    required this.description,
    required this.tags,
    required this.author,
    required this.releaseDate,
  });

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      description: json['description'],
      tags: List<String>.from(json['tags']),
      author: Author.fromJson(json['author']),
      releaseDate: List<String>.from(json['releaseDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'tags': tags,
      'author': author.toJson(),
      'releaseDate': releaseDate,
    };
  }
}

class Author {
  final String name;
  final String email;

  Author({required this.name, required this.email});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }
}