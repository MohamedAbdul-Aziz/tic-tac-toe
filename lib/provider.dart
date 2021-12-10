import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  String startGame = "X";
  String winner = "";

  String b1 = "",
      b2 = "",
      b3 = "",
      b4 = "",
      b5 = "",
      b6 = "",
      b7 = "",
      b8 = "",
      b9 = "";

  void checkWinner() {
    if (b1 == "O" && b4 == "O" && b7 == "O") {
      winner = "O is Winner";
    }
    if (b2 == "O" && b5 == "O" && b8 == "O") {
      winner = "O is Winner";
    }
    if (b3 == "O" && b6 == "O" && b9 == "O") {
      winner = "O is Winner";
    }

    if (b1 == "O" && b2 == "O" && b3 == "O") {
      winner = "O is Winner";
    }

    if (b4 == "O" && b5 == "O" && b6 == "O") {
      winner = "O is Winner";
    }

    if (b7 == "O" && b8 == "O" && b9 == "O") {
      winner = "O is Winner";
    }
    if (b1 == "O" && b5 == "O" && b9 == "O") {
      winner = "O is Winner";
    }

    if (b3 == "O" && b5 == "O" && b7 == "O") {
      winner = "O is Winner";
    }
    // for X

    if (b1 == "X" && b4 == "X" && b7 == "X") {
      winner = "X is Winner";
    }
    if (b2 == "X" && b5 == "X" && b8 == "X") {
      winner = "X is Winner";
    }
    if (b3 == "X" && b6 == "X" && b9 == "X") {
      winner = "X is Winner";
    }

    if (b1 == "X" && b2 == "X" && b3 == "X") {
      winner = "X is Winner";
    }

    if (b4 == "X" && b5 == "X" && b6 == "X") {
      winner = "X is Winner";
    }

    if (b7 == "X" && b8 == "X" && b9 == "X") {
      winner = "X is Winner";
    }
    if (b1 == "X" && b5 == "X" && b9 == "X") {
      winner = "X is Winner";
    }

    if (b3 == "X" && b5 == "X" && b7 == "X") {
      winner = "X is Winner";
    }
    if (winner != "") {}
  }

  function1() {
    if (b1 == "X" || b1 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b1 = "O";
      } else {
        startGame = "X";
        b1 = "X";
      }
      checkWinner();

      notifyListeners();
    }
  }

  function2() {
    if (b2 == "X" || b2 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b2 = "O";
      } else {
        startGame = "X";
        b2 = "X";
      }
      checkWinner();
    }

    notifyListeners();
  }

  function3() {
    if (b3 == "X" || b3 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b3 = "O";
      } else {
        startGame = "X";
        b3 = "X";
      }
      checkWinner();
    }

    notifyListeners();
  }

  function4() {
    if (b4 == "X" || b4 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b4 = "O";
      } else {
        startGame = "X";
        b4 = "X";
      }
      checkWinner();
    }
    notifyListeners();
  }

  function5() {
    if (b5 == "X" || b5 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b5 = "O";
      } else {
        startGame = "X";
        b5 = "X";
      }
      checkWinner();
    }
    notifyListeners();
  }

  function6() {
    if (b6 == "X" || b6 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b6 = "O";
      } else {
        startGame = "X";
        b6 = "X";
      }
      checkWinner();
    }
    notifyListeners();
  }

  function7() {
    if (b7 == "X" || b7 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b7 = "O";
      } else {
        startGame = "X";
        b7 = "X";
      }
      checkWinner();
    }

    notifyListeners();
  }

  function8() {
    if (b8 == "X" || b8 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b8 = "O";
      } else {
        startGame = "X";
        b8 = "X";
      }
      checkWinner();
    }
    notifyListeners();
  }

  function9() {
    if (b9 == "X" || b9 == "O" || winner != "") {
      null;
    } else {
      if (startGame == "X") {
        startGame = "O";
        b9 = "O";
      } else {
        startGame = "X";
        b9 = "X";
      }
      checkWinner();
    }
    notifyListeners();
  }

  reset() {
    b1 = "";
    b2 = "";
    b3 = "";
    b4 = "";
    b5 = "";
    b6 = "";
    b7 = "";
    b8 = "";
    b9 = "";

    winner = "";
    notifyListeners();
  }
}
