// Find the Greatest Number Among 3 Numbers using if
// statement.
//
// * declare three integer variables (num1 , num2 , num3)
// and assign these values (10 , 20 , 30).
//
// * using if else if statement : find the greatest number.

void main() {
  int num1 = 10;
  int num2 = 15;
  int num3 = 5;
  if (num1 > num2 && num1 > num3) {
    print('$num1 is the greatest number.');
  } else if (num2 > num1 && num2 > num3) {
    print('$num2 is the greatest number.');
  } else if (num3 > num1 && num3 > num3) {
    print('$num3 is the greatest number.');
  }
}
