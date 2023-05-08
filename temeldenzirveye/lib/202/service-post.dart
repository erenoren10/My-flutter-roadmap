import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:temeldenzirveye/202/service-json.dart';

class Servicepostln extends StatefulWidget {
  const Servicepostln({super.key});

  @override
  State<Servicepostln> createState() => _ServicepostlnState();
}

class _ServicepostlnState extends State<Servicepostln> {
  bool _isloading = false;
  String? name;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _bodycontroller = TextEditingController();
  final TextEditingController _usercontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeloading() {
    setState(() {
      _isloading = !_isloading;
    });
  }

  Future<void> _additemstoservice(PostModel postmodel) async {
    _changeloading();
    final response = await _dio.post('posts', data: postmodel);
    if (response.statusCode == HttpStatus.created) {
      name = 'başarılı';
    }
    _changeloading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(name ?? '')),
          actions: [
            _isloading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink()
          ],
        ),
        body: Column(
          children: [
            TextField(
                controller: _titlecontroller,
                decoration: InputDecoration(labelText: "title")),
            TextField(
                controller: _bodycontroller,
                decoration: InputDecoration(labelText: "body")),
            TextField(
                controller: _usercontroller,
                keyboardType: TextInputType.number,
                autofillHints: [],
                decoration: InputDecoration(labelText: "userid")),
            TextButton(
                onPressed: _isloading
                    ? null
                    : () {
                        if (_titlecontroller.text.isNotEmpty &&
                            _bodycontroller.text.isNotEmpty &&
                            _usercontroller.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodycontroller.text,
                              title: _titlecontroller.text,
                              userId: int.tryParse(_usercontroller.text));
                          _additemstoservice(model);
                        }
                      },
                child: Text("send"))
          ],
        ));
  }
}

class _postCard extends StatelessWidget {
  const _postCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
