import '../json/data.dart';
import '../model/employee.dart';

void main(List<String> arguments) {
  List engneering = [];
  List marketing = [];
  for (var element in companyData['departments']['engineering']['employees']) {
    engneering.add(Employee.fromJson(element));
  }

  for (var element in companyData['departments']['marketing']['employees']) {
    marketing.add(Employee.fromJson(element));
  }

  print("\n" * 5);
  for (Employee element in engneering) {
    element.toPrint();
  }

  for (Employee element in marketing) {
    element.toPrint();
  }
}
