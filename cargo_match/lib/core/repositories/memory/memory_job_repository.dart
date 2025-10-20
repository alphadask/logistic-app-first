import 'dart:async';

import '../../enums/job_status.dart';
import '../../models/job.dart';
import '../job_repository.dart';

class MemoryJobRepository implements JobRepository {
  final Map<String, Job> _store = {};

  @override
  Future<Job?> getById(String id) async => _store[id];

  @override
  Future<List<Job>> listOpenJobs() async {
    return _store.values.where((j) => j.status == JobStatus.open).toList();
  }

  @override
  Future<void> create(Job job) async {
    _store[job.id] = job;
  }

  @override
  Future<void> assignDriver({required String jobId, required String driverId}) async {
    final job = _store[jobId];
    if (job == null) return;
    _store[jobId] = job.copyWith(assignedDriverId: driverId, status: JobStatus.assigned);
  }
}
