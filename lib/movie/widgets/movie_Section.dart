import 'package:flutter/material.dart';
import 'package:practis_flutter/movie/constatnts.dart';
import 'package:practis_flutter/movie/movies.dart';
import 'package:practis_flutter/movie/widgets/text_widget.dart';

class Movie_Sections extends StatelessWidget {
  Movie_Sections({super.key, required this.Data, required this.image});
  late String Data;
  late String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(30),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.5), BlendMode.color)),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        children: [
          TextWidget(
              data: Data,
              isBold: true,
              size: 30,
              textColor: filmColors.offWhite),
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MoviesScreen()));
            },
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: filmColors.offWhite, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios)),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blueGrey,
                side: BorderSide(color: filmColors.offWhite),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20)),
          )
        ],
      ),
    );
  }
}
