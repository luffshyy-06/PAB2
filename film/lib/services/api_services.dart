// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices {
  static const String apiKey = '227a03ba18d1dfd0c35ed54aa67e7842';
  static const String baseUrl = 'https://api.themoviedb.org/3';

  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response = await http.get(
      Uri.parse('$baseUrl/movie/now_playing?api_key=$apiKey'),
    );

    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response = await http.get(
      Uri.parse('$baseUrl/trending/movie/week?api_key=$apiKey'),
    );

    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response = await http.get(
      Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'),
    );

    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> searchMovies(String query) async {
    final response = await http.get(
      Uri.parse('$baseUrl/search/movie?query=$query&api_key=$apiKey'),
    );

    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  //Ketika pakai Bearer
  // Future<List<Map<String, dynamic>>> getAllMoviesBearer() async {
  //   final response = await http.get(
  //     Uri.parse('$baseUrl/movie/now_playing'),
  //     headers:{
  //       'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5NjZjZmZjOWJkMjJjYjE3YmM3OGM0N2QzYjUyOTcyZiIsIm5iZiI6MTcwNjUzMTkyNC4zMzksInN1YiI6IjY1Yjc5YzU0ODc0MWM0MDE4NDkyOGNjNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jPwVv660CqcXCTeg9QLqMsKR1ruaNcqsfqjYtXtcdB8'
  //     }
  //   );

  //   final data = json.decode(response.body);
  //   return List<Map<String, dynamic>>.from(data['results']);
  // }
}
