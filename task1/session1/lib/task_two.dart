void main() {
  var fun = Parts();
  int d = 50;
  fun.grade(d);

  print('--------------------');

  var avg = PrintAverage();

  double num1 = 20;
  double num2 = 30;
  double num3 = 50;

  avg.printAvg(num1, num2, num3);

  print('--------------------');
  var funtwo = Compare();
  int n1 = 10;
  int n2 = 5;
  funtwo.compareNum(n1, n2);
}

class Parts {
  void grade(int d) {
    if (d > 0 && d <= 100) {
      switch (d) {
        case 10:
          {
            print('A');
          }
          break;
        case 50:
          {
            print('B');
          }
          break;
        case 60:
          {
            print('C');
          }
        case 100:
          {
            print('D');
          }
          break;
      }
    } else {
      print('Please Enter Number Between 0  And  100');
    }
  }
}

class PrintAverage {
  void printAvg(double num1, double num2, double num3) {
    double sum = num1 + num2 + num3;

    double average = sum / 3;
    print('The Average is: $average');
  }
}

class Compare {
  void compareNum(int n1, int n2) {
    if (n1 > n2) {
      print('Yes');
    } else
      print('No');
  }
}
