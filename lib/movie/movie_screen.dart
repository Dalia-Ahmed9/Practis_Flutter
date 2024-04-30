import 'package:flutter/material.dart';
import 'package:practis_flutter/movie/constatnts.dart';
import 'package:practis_flutter/movie/widgets/movie_Section.dart';
import 'package:practis_flutter/movie/widgets/text_widget.dart';

class Movie_Screen extends StatefulWidget {
  const Movie_Screen({super.key});

  @override
  State<Movie_Screen> createState() => _Movie_ScreenState();
}

class _Movie_ScreenState extends State<Movie_Screen> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: Width,
          height: Height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: TextWidget(
                      size: 40,
                      isBold: true,
                      textColor: filmColors.darkblue,
                      data: "MOVIE APP",
                    )),
                const SizedBox(
                  height: 50,
                ),
                Movie_Sections(
                  Data: ' MOVIES ',
                  image: ContainerImage.films,
                ),
                const SizedBox(
                  height: 10,
                ),
                Movie_Sections(
                  Data: " Series ",
                  image: ContainerImage.series,
                ),
                const SizedBox(
                  height: 10,
                ),
                Movie_Sections(
                  Data: ' Cartoon ',
                  image: ContainerImage.cartoon,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
