import '../models/job.dart';

abstract class JobRepository {
  Future<Job?> getById(String id);
  Future<List<Job>> listOpenJobs();
  Future<void> create(Job job);
  Future<void> assignDriver({required String jobId, required String driverId});
}
