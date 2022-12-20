import 'package:flutter/material.dart';
import 'package:movielab/models/item_models/show_models/show_preview_model.dart';
import 'package:movielab/modules/tools/navigate.dart';
import 'package:movielab/pages/main/home/sections/home_titles.dart';
import 'package:movielab/pages/main/home/sections/movies/all_movies.dart';
import 'package:movielab/pages/shared/item_exhibitor/item_box/compressed_item_box/compressed_item_box.dart';
import 'package:movielab/widgets/error.dart';

class HomeMoviesBuilder extends StatelessWidget {
  final List<ShowPreview> movies;
  final String title;
  const HomeMoviesBuilder(
      {Key? key, required this.movies, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: homeTitle(title)),
            ],
          ),
          SizedBox(
              height: movies[0].crew != "" ? 280 : 270,
              child: movies.isNotEmpty
                  ? Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  movies.length > 10 ? 10 : movies.length,
                              itemBuilder: (context, index) {
                                return CompressedItemBox(
                                  showPreview: movies[index],
                                  preTag: title,
                                );
                              }),
                        ),
                      ],
                    )
                  : Center(
                      child: ConnectionErrorWidget(tryAgain: () {
                        // When this error happens, It means the server is busy (at least imdb api says that so) and based on it trying again doesn't really make any sense.
                      }),
                    )),
        ],
      ),
    );
  }
}
