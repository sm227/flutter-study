import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/models/movie_model.dart';
import 'package:untitled/assign/movieApp/services/api_services.dart';
import 'package:untitled/assign/movieApp/widgets/movie_widget.dart';
import 'package:untitled/assign/movieApp/widgets/now_movie_widget.dart';
import 'package:untitled/assign/movieApp/widgets/soon_movie_widget.dart';

// 데이터 형식
// {"adult":false,"backdrop_path":"/pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg","genre_ids":[878,28,18],"id":933131,"original_language":"ko","original_title":"황야","overview":"After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.","popularity":1907.07,"poster_path":"/zVMyvNowgbsBAL6O6esWfRpAcOb.jpg","release_date":"2024-01-26","title":"Badland Hunters","video":false,"vote_average":6.726,"vote_count":382}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final popularMovies = ApiService().getPopularMovies();
  final nowMovies = ApiService().getNowMovies();
  final soonMovies = ApiService().getSoonMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: const Text(
                "Popular Movies",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5),
              ),
            ),
            FutureBuilder(
              future: popularMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    height: 300,
                    child: makeList(snapshot, 300, 250),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: const Text(
                "Now in Cinemas",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5),
              ),
            ),
            FutureBuilder(
              future: nowMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    height: 270,
                    child: makeNowList(snapshot),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: const Text(
                "Coming soon",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5),
              ),
            ),
            FutureBuilder(
              future: soonMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    height: 270,
                    child: makeSoonList(snapshot),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }

  ListView makeList(
      AsyncSnapshot<List<MovieModel>> snapshot, double a, double b) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return Movie(
          id: movie.id,
          title: movie.title,
          posterPath: movie.posterPath,
          overView: movie.overView,
          width: a,
          height: b,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 30,
      ),
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    );
  }

  ListView makeNowList(AsyncSnapshot<List<MovieModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return NowMovie(
          id: movie.id,
          title: movie.title,
          posterPath: movie.posterPath,
          overView: movie.overView,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 30,
      ),
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    );
  }

  ListView makeSoonList(AsyncSnapshot<List<MovieModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return SoonMovie(
          id: movie.id,
          title: movie.title,
          posterPath: movie.posterPath,
          overView: movie.overView,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 30,
      ),
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    );
  }
}
