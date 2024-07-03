void main(){
  Map<int, String?>? employeeList = {001: "John Doe", 003: "Job Kalama"};
  print("Our employees are: ${employeeList[1]}");

  employeeList.addAll({002:null});
  print(employeeList);

  employeeList = null;
  print(employeeList);
}