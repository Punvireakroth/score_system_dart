/*
*Name: Pun Vireak Roth
*Grade: 12.2
*ID: 18215
*9 / 21 / 2021
*/
import 'dart:io';

void main() {
  stdout.write('type "s" to start the program \n');
  stdout.write('type "q" to quite the program \n');
  while (true) {
    final score = <int>[];
    final userInput = stdin.readLineSync();
    //Program validation
    if (userInput == 's') {

      // get userInput score in all three term
      // add user input to the list
      // take input from list index and calulate like teacher yuki formular score
      const numberOfTerm = 3;
      for (var i = 1; i <= numberOfTerm; i++) {
        int? input;
        // This loop is for asking again if we get something we don't see as a number
        do {
          print('How many score did you get in Term $i: ');

          // Get a number. input is going to be null if the input is not a number
          input = int.tryParse(stdin.readLineSync() ?? '');
        } while (input == null); // loop as long as we don't got a number

        // Add the number we got to the list
        score.add(input);
        print(score);
      }
    } else if (userInput == 'q') {
      break;
    } else {
      print('Invalid Input🤔');
    }
    //add final Score
    double resultScore = ((score[0] + score[1]) / 2) * 0.30 + score[2] * 0.70;
    //Program logic
    stdout.write('What is Your Name?');
    final studentName = stdin.readLineSync();
    print(studentName);
   
    if (resultScore >= 90) {
      print('Average marks of $studentName is: $resultScore');
      print('Letter Grade of $studentName is: A+');
    } else if (resultScore >= 80) {
      print('Average marks of $studentName is: $resultScore');
      print('Letter Grade of $studentName is: A');
    } else if (resultScore >= 70) {
      print('Average marks of $studentName is: $resultScore');
      print('Letter Grade of $studentName is: B');
    } else if (resultScore >= 60) {
      print('Average marks of $studentName is: $resultScore');
      print('Letter Grade of $studentName is: C');
    } else if (resultScore >= 50) {
      print('Average marks of $studentName is: $resultScore');
      print('Letter Grade of $studentName is: D');
    } else if (resultScore < 50) {
      print('Average marks of $studentName is: $resultScore');
      print('Letter Grade of $studentName is: F');
    }
  }
}