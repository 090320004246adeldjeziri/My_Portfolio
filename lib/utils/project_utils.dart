// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.androidLink,
    required this.webLink,
  });
}

//Hobies

List<ProjectUtils> hobbiesProject = [
  ProjectUtils(
      image: "assets/web.png",
      androidLink: "https://github.com/090320004246adeldjeziri/Siahaty_Reservation_2023",
      subtitle: "Aquarek Sihaty app help people find best reservation for take a good voyage whitout thinking about price and place",
      title: "Aquarek Siahi",
      webLink: "https://github.com/090320004246adeldjeziri/Siahaty_Reservation_2023"),
   ProjectUtils(
      image: "assets/web.png",
      androidLink: "",
      subtitle: "Aquarek Sihaty app help people find best reservation for take a good voyage whitout thinking about price and place",
      title: "Aquarek Siahi",
      webLink: ""),
   ProjectUtils(
      image: "assets/web.png",
      androidLink: "",
      subtitle: "Aquarek Sihaty app help people find best reservation for take a good voyage whitout thinking about price and place",
      title: "Aquarek Siahi",
      webLink: ""),
];

//Work Project
List<ProjectUtils> workProjects = [
  ProjectUtils(
      image: "assets/images/python.png",
      androidLink: "https://github.com/090320004246adeldjeziri/Siahaty_Reservation_2023",
      subtitle: "Medicament in the Hand app helps people search for medications in pharmacies efficiently.",
      title: "Medicament in the Hand",
      webLink: "https://github.com/090320004246adeldjeziri/cabine"),
  ProjectUtils(
      image: "assets/images/avatar.png",
      androidLink: "https://github.com/090320004246adeldjeziri/doctor_appointment",
      subtitle: "Doctor Appointment app allows users to book appointments with doctors easily.",
      title: "Doctor Appointment",
      webLink: ""),
  ProjectUtils(
      image: "assets/images/pr.png",
      androidLink: "https://github.com/090320004246adeldjeziri/Siahaty_Reservation",
      subtitle: "Siahaty Reservation app helps people find the best reservations for a good trip without worrying about price and place.",
      title: "Siahaty Reservation",
      webLink: "https://github.com/090320004246adeldjeziri/Siahaty_Reservation"),
];
