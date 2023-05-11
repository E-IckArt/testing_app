import 'package:test/test.dart'; // Import du package test
import 'package:testing_app/models/favorites.dart'; // Import du model Favorites

// Le framework de test Flutter me permet d'associer des tests similaires liés les uns aux autres dans un groupe.
// Il peut y avoir plusieurs groupes dans un seul fichier de test destinés à tester différentes parties du fichier correspondant dans le répertoire lib.

// La méthode test() utilise deux paramètres de position :
// - la description du test et
// - le callback dans lequel j'écris le test.

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    // Test de la méthode add() - Ajout d'un nouvel item à la liste des favoris
    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    // Test de la methode remove() - Suppression d'un item de la liste des favoris
    test('An item should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}