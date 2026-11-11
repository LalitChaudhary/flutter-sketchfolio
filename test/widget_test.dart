import 'package:flutter_test/flutter_test.dart';
import 'package:sketchfolio/main.dart';

void main() {
  testWidgets('demo profile opens Sketchfolio', (tester) async {
    await tester.pumpWidget(const SketchfolioApp());
    await tester.tap(find.text('Open Sketchfolio'));
    await tester.pumpAndSettle();
    expect(find.text('Wall'), findsOneWidget);
    expect(find.textContaining('frames'), findsWidgets);
  });
}
