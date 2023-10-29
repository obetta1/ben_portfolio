import 'package:benjamin_portfolio/core/models/project_model.dart';
import 'package:benjamin_portfolio/core/services/project_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectProvider extends StateNotifier<List<Project>> {
  Ref ref;
  ProjectProvider(this.ref) : super([]) {
    fetch();
  }

  ProjectService get service => ref.read(projectService);

  Future<List<Project>?> fetch() async {
    try {
      final res = await service.fetchGitHubRepositories();
      setSuccessState(res);
      return res;
    } catch (error) {
      debugPrint('something went wronf  ${error}');
    }
  }

  void setSuccessState(List<Project> projects) {
    projects.sort((a, b) {
      return (a.fullName ?? "").compareTo(b.fullName ?? "");
    });
    state = projects;
  }
}

final projectProvider = StateNotifierProvider<ProjectProvider, List<Project>>(
  (ref) => ProjectProvider(ref),
);
