// Define an interface
abstract class HealthStatusInterface {
  String getHealthStatus();
}

// Define a class that implements the interface
class Patient implements HealthStatusInterface {
  String name;
  int age;
  String healthStatus;

  Patient(this.name, this.age, this.healthStatus);

  @override
  String getHealthStatus() {
    return healthStatus;
  }
}

// Define a method that demonstrates the use of a loop
void printHealthStatus(List<Patient> patientList) {
  for (var patient in patientList) {
    print('${patient.name}: ${patient.getHealthStatus()}');
  }
}

// Define a function to read data from a file and initialize instances of the Patient class
List<Patient> initializePatientsFromFile(String filename) {
  List<Patient> patientList = [];
  // Simulating reading data from a file
  List<List<String>> dataFromFile = [
    ['Alice', '30', 'Healthy'],
    ['Bob', '40', 'Fever'],
    ['Carol', '50', 'Recovered']
  ];

  for (var data in dataFromFile) {
    String name = data[0];
    int age = int.parse(data[1]);
    String healthStatus = data[2];
    patientList.add(Patient(name, age, healthStatus));
  }
  return patientList;
}

// Main function
void main() {
  // Initialize instances of Patient from data in a file
  List<Patient> patientList = initializePatientsFromFile("patients.txt");

  // Demonstrate the use of a loop
  print("Health status of patients:");
  printHealthStatus(patientList);
}
