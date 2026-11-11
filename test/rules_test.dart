import 'package:flutter_test/flutter_test.dart';
import 'package:sketchfolio/domain/rules.dart';

void main() {
  test('frames advances and then stops at the cap', () {
    expect(nextFrames(0), 1);
    expect(capped(12, 12), 12);
    expect(nextFrames(-4), 0);
  });
}
