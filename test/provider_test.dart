import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tic_tac_toe/provider.dart';

class MockPrcvider extends MyProvider with Mock {}

void main() {
  MockPrcvider newprovider = MockPrcvider();

  group("test ", () {
    test("function1", () {
      newprovider.function1();
      expect(newprovider.startGame, "O");
      expect(newprovider.b1, "O");
    });
    test("function2", () {
      newprovider.function2();
      expect(newprovider.startGame, "X");
      expect(newprovider.b2, "X");
    });

    test("function3", () {
      newprovider.function3();
      expect(newprovider.startGame, "O");
      expect(newprovider.b3, "O");
    });
  });

  test("function4", () {
    newprovider.function4();
    expect(newprovider.startGame, "X");
    expect(newprovider.b4, "X");
  });

  test("function5", () {
    newprovider.function5();
    expect(newprovider.startGame, "O");
    expect(newprovider.b3, "O");
  });

  test("function6", () {
    newprovider.function6();
    expect(newprovider.startGame, "X");
    expect(newprovider.b6, "X");
  });

  test("function7", () {
    newprovider.function7();
    expect(newprovider.startGame, "O");
    expect(newprovider.b7, "O");
  });

  test("function8", () {
    newprovider.checkWinner();
    expect(newprovider.winner, "O is Winner");
  });

  test("function8", () {
    newprovider.reset();
    expect(newprovider.b1, "");
     expect(newprovider.winner, "");
  });
}
