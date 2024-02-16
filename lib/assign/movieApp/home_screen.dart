import 'package:flutter/material.dart';
import 'package:untitled/assign/movieApp/services/api_services.dart';

// 데이터 형식
// {"adult":false,"backdrop_path":"/pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg","genre_ids":[878,28,18],"id":933131,"original_language":"ko","original_title":"황야","overview":"After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.","popularity":1907.07,"poster_path":"/zVMyvNowgbsBAL6O6esWfRpAcOb.jpg","release_date":"2024-01-26","title":"Badland Hunters","video":false,"vote_average":6.726,"vote_count":382}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
