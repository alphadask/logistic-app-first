import 'package:flutter_test/flutter_test.dart';
import 'package:cargo_match/main.dart';

void main() {
  testWidgets('App smoke test: shows role selection', (tester) async {
    await tester.pumpWidget(const CargoMatchApp());
    await tester.pumpAndSettle();

    expect(find.text('Rol Seçin'), findsOneWidget);
    expect(find.text('Sürücü'), findsOneWidget);
    expect(find.text('Tedarikçi'), findsOneWidget);
  });
}
