import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:appets/main.dart'; // Importation correcte de MyApp

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construire l'application et afficher le premier frame.
    await tester.pumpWidget(const MyApp());

    // Vérifier que le compteur commence à 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Appuyer sur l'icône "+" et rafraîchir le widget.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Vérifier que le compteur est incrémenté.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
