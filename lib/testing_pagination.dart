import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestingPagination extends StatefulWidget {
  const TestingPagination({super.key});

  @override
  State<TestingPagination> createState() => _TestingPaginationState();
}

class _TestingPaginationState extends State<TestingPagination> {
  ScrollController scrollController = ScrollController();
  List<dynamic> localList = [];
  bool loading = false;
  int _start = 0;
  final int _limit = 5;

  @override
  void initState() {
    super.initState();
    getPosts();
    print('first time API called  abc    -------------->');
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !loading) {
        _start += _limit;
        getPosts();
        print('API called again -------------->');
      }
    });
  }

  Future<void> getPosts() async {
    try {
      setState(() {
        loading = true;
      });

      var url = Uri.parse(
          'https://jsonplaceholder.typicode.com/posts?_start=$_start&_limit=$_limit');

      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body.toString());

        setState(() {
          localList.addAll(data);
        });
      }
    } catch (error) {
      print('Error: $error');
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text('Pagination and Lazy Loading'),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: localList.length + (loading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < localList.length) {
            return ListTile(
              title: Text('Title: ${localList[index]['title']}'),
              subtitle: Text('Body: ${localList[index]['body']}'),
            );
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
