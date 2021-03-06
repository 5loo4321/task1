import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DetailsSreen.dart';

class TopMovies extends StatelessWidget {

  final List top;

  const TopMovies({ required this.top}) ;
  @override
  Widget build(
      BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width:double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            modified_text(text: 'Top Movies',color: Colors.grey, size: 26,),
            SizedBox(height: 10,),
            Container(height: 270,
                width:double.infinity,
                child:
                ListView.builder(
                    itemCount: top.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(
                                      name: top[index]['title'],
                                      bannerurl:
                                      'https://image.tmdb.org/t/p/w500' +
                                          top[index]['backdrop_path'],
                                      posterurl:
                                      'https://image.tmdb.org/t/p/w500' +
                                          top[index]['poster_path'],
                                      description: top[index]['overview'],
                                      vote: top[index]['vote_average']
                                          .toString(),
                                      launch_on: top[index]
                                      ['release_date'],
                                    )),
                          );
                        },

                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              width:double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image( image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500' +
                                      top[index]['poster_path']),
                                fit: BoxFit.cover,),
                            ),
                            SizedBox(height: 5),
                            modified_text(
                              size: 15,
                              text: top[index]['title'] != null
                                  ? top[index]['title']
                                  : 'Loading', color: Colors.black,),
                          ],
                        ),

                      );
                    }))
          ],

        ),
      ),
    );
  }
  modified_text({String? text   , required int size, Color? color}) {}

}
