class ServiceProviderModel {
  final String image;
  final String name;
  final String address;
  final String about;
  final double rating;
  final String website;
  final String phone;
  final String email;

  final List<Project> projects;

  ServiceProviderModel(
      {required this.image,
      required this.name,
      required this.address,
      required this.about,
      required this.rating,
      required this.website,
      required this.phone,
      required this.email,
      required this.projects});
}

class Project {
  final String projectName;
  final String image;
  final String name;
  final String projectDetails;
  final List<String> projectImages;

  Project({
    required this.projectName,
    required this.image,
    required this.name,
    required this.projectDetails,
    required this.projectImages,
  });
}
