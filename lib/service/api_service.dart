import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/posts.dart';
import '../model/comments.dart';
import '../model/albums.dart';
import '../model/photos.dart';
import '../model/todos.dart';
import '../model/users.dart';

class ApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  static Future<List<Posts>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Posts.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load posts: ${response.statusCode}');
    }
  }

  static Future<List<Comments>> fetchComments() async {
    final response = await http.get(Uri.parse('$baseUrl/comments'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Comments.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load comments: ${response.statusCode}');
    }
  }

  static Future<List<Albums>> fetchAlbums() async {
    final response = await http.get(Uri.parse('$baseUrl/albums'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Albums.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load albums: ${response.statusCode}');
    }
  }

  static Future<List<Photos>> fetchPhotos() async {
    final response = await http.get(Uri.parse('$baseUrl/photos'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Photos.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load photos: ${response.statusCode}');
    }
  }

  static Future<List<Photos>> fetchAlbumPhotos(int albumId) async {
    final response =
        await http.get(Uri.parse('$baseUrl/albums/$albumId/photos'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList
          .map((json) => Photos.fromJson(json as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load album photos: ${response.statusCode}');
    }
  }

  static Future<List<Todos>> fetchTodos() async {
    final response = await http.get(Uri.parse('$baseUrl/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Todos.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load todos: ${response.statusCode}');
    }
  }

  static Future<List<Users>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Users.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load users: ${response.statusCode}');
    }
  }
}
