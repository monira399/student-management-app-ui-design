class StudentDetailsModel {
  final String name;
  final String id;
  final String email;
  final String phone;
  final String className;
  final String section;
  final String roll;
  final String address;
  final String fatherName;
  final String motherName;
  final String image;
  final double attendance;

  StudentDetailsModel({
    required this.name,
    required this.id,
    required this.email,
    this.phone ="",
    this.className ="",
    this.section ="",
    this.roll="",
    this.address="",
    this.fatherName="",
    this.motherName="",
    this.image="",
    this.attendance= 0,
  });
}
