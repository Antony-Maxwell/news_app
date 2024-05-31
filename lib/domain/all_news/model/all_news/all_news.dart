import 'package:json_annotation/json_annotation.dart';

part 'all_news.g.dart';

@JsonSerializable()
class AllNews {
	String? status;
	int? totalResults;
	List<Article> articles;

	AllNews({this.status, this.totalResults, this.articles = const []});

	factory AllNews.fromJson(Map<String, dynamic> json) {
		return _$AllNewsFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AllNewsToJson(this);
}


@JsonSerializable()
class Article {
	Source? source;
	String? author;
	String? title;
	String? description;
	String? url;
	String? urlToImage;
	String? publishedAt;
	String? content;

	Article({
		this.source, 
		this.author, 
		this.title, 
		this.description, 
		this.url, 
		this.urlToImage, 
		this.publishedAt, 
		this.content, 
	});

	factory Article.fromJson(Map<String, dynamic> json) {
		return _$ArticleFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ArticleToJson(this);
}


@JsonSerializable()
class Source {
	String? id;
	String? name;

	Source({this.id, this.name});

	factory Source.fromJson(Map<String, dynamic> json) {
		return _$SourceFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SourceToJson(this);
}
