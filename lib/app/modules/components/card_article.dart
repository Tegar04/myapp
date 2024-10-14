import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/routes/app_routes.dart';
import '../../data/models/article.dart';

class CardArticle extends StatelessWidget {
  final Article article;
  const CardArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: article.urlToImage, // Use a fallback tag
          child: SizedBox(
            width: 100,
            height: 100,
            // ignore: unnecessary_null_comparison
            child: article.urlToImage != null
                ? Image.network(
                    article.urlToImage,
                    fit: BoxFit.cover,
                  )
                : Container(
                    color: Colors.grey,
                    child: const Center(
                      child: Text(
                        'No Image',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
          ),
        ),
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author),
        onTap: () {
          Get.toNamed(AppRoutes.ARTICLE_DETAILS, arguments: article);
        },
      ),
    );
  }
}
