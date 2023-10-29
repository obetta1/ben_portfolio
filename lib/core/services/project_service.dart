import 'dart:convert';

import 'package:benjamin_portfolio/core/models/project_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../network/network_provider.dart';
import '../network/url_config.dart';

class ProjectService {
  final Ref? ref;
  ProjectService({this.ref});

  Network get network => ref?.read(networkProvider) ?? Network();

  Future<List<Project>> fetchGitHubRepositories() async {
    final response = await http.get(
      Uri.parse(UrlConfig.baseUrl + UrlConfig.projects),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      debugPrint("${response.body}");

      return data.map((repo) => Project.fromJson(repo)).toList();
    } else {
      throw Exception('Failed to load repositories');
    }
  }

  Future<List<Project>> getProject() async {
    final res = await network.call(UrlConfig.projects, RequestMethod.get);
    debugPrint(
        "status==${res.statusCode}==${res.statusMessage} res === ${res.data}");

    return res.data["data"].map((x) => Project.fromJson(x)).toList().toList();
  }
}

final projectService = Provider((ref) => ProjectService(ref: ref));
