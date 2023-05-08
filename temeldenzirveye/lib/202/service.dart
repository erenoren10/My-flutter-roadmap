import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:temeldenzirveye/202/service-json.dart';

class Serviceln extends StatefulWidget {
  const Serviceln({super.key});

  @override
  State<Serviceln> createState() => _ServicelnState();
}

class _ServicelnState extends State<Serviceln> {
  List<PostModel>? _items;
  String? name;
  bool _isloading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    fetchPostItems();
    name = "veli";
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeloading() {
    setState(() {
      _isloading = !_isloading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeloading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        _items = _datas.map((e) => PostModel.fromJson(e)).toList();
      }
      _changeloading();
    }
  }

  Future<void> fetchPostItemsadvance() async {
    _changeloading();
    final response = await _dio.get('posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        _items = _datas.map((e) => PostModel.fromJson(e)).toList();
      }
      _changeloading();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(name ?? '')),
        actions: [
          _isloading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _postCard(model: _items?[index]);
        },
      ),
    );
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
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
