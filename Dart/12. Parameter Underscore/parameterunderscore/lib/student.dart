class Student {
  String name;

  Function(String name) competency;

  Student(this.name, {this.competency});

  void showCompetency() {
    if (competency != null) {
      competency(name);
    }
  }
}
