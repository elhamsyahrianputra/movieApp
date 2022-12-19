import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movielab/constants/colors.dart';
import 'package:movielab/constants/types.dart';
import 'package:movielab/models/item_models/show_models/show_preview_model.dart';
import 'package:movielab/pages/shared/item_exhibitor/item_box/expanded_item_box/expanded_item_box.dart';
import 'package:movielab/widgets/inefficacious_refresh_indicator.dart';

class AllMoviesPage extends StatelessWidget {
  final List<ShowPreview> movies;
  final String title;
  const AllMoviesPage(
      {Key? key, required this.movies, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.arrowLeft,
                size: 22.5,
              )),
          backgroundColor: kBackgroundColor,
          title: Text(title,
              style:
                  const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: InefficaciousRefreshIndicator(
                    child: ListView.builder(
                      itemCount: movies.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ExpandedItemBox(
                          show: movies[index],
                          iRank: (index + 1).toString(),
                          preTag: title,
                          showType: title == "Recommended For You"
                              ? ItemSuit.RECOMMENDED
                              : ItemSuit.OFFICIAL_LIST,
                        );
                      },
                    ),
                  ))
            ],
          ),
        ));
  }
}
