class AppConfig {
  // Toggle to switch between Firebase-backed repos and in-memory mock repos.
  static const bool useFirebase = false;

  // Maps: if true, map screens render GoogleMap widget; otherwise placeholder.
  static const bool mapsEnabled = false;

  // Simple base rate for cost estimation (TRY per km) for demo purposes.
  static const double baseRatePerKm = 12.5;
}
