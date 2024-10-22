class RecommendedDoctor {
  final String name, speciality, institute, image, patients;
  final int experience;

  const RecommendedDoctor(
      {required this.name,
      required this.speciality,
      required this.institute,
      required this.image,
      required this.experience,
      required this.patients});
}

const List<RecommendedDoctor> demo_recommended_doctor = [
  RecommendedDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
    experience: 8,
    patients: '1.08K',
  ),
  RecommendedDoctor(
    name: "Dr. Serena Gome",
    speciality: "Medicine Specialist ",
    institute: "Good Health Clinic",
    image: "assets/images/Serena_Gome.png",
    experience: 5,
    patients: '2.7K',
  ),
  RecommendedDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
     experience: 5,
    patients: '2.7K',
  ),
  RecommendedDoctor(
    name: "Dr. Asma Khan",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Asma_Khan.png",
      experience: 5,
    patients: '2.7K',
  ),
  RecommendedDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
      experience: 5,
    patients: '2.7K',
  ),
];
