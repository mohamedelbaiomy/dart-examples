// 2) Suppose, your distance to office from home is 25 km
// and you travel 40 km per hour. Write a program to calculate
// time taken to reach office in minutes. Formula =>  time = distance / (speed)

void main() {
  double distance = 25.0; // Distance from home to office in kilometers
  double speed = 40.0; // Speed in kilometers per hour
  double time = distance / speed; // Calculate the time in hours
  int timeInMinutes = (time * 60).toInt(); // Convert time to minutes
  print('It takes $timeInMinutes minutes to reach the office.');

  print("-----------------------------------");

  double fahrenheit = 98.6;
  double celsius = fahrenheit.toCelsius();

  print('$fahrenheit°F is equal to $celsius°C');
}

extension TemperatureConversion on num {
  double toCelsius() {
    return 5 / 9 * (this - 32);
  }
}
