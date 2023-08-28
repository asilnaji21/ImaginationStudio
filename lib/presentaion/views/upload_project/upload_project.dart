class UploadProject extends StatefulWidget {
  const UploadProject({super.key});

  @override
  State<UploadProject> createState() => _UploadProjectState();
}

class _UploadProjectState extends State<UploadProject> {
  TextEditingController projectNameController = TextEditingController();
  TextEditingController projectDateController = TextEditingController();
  TextEditingController projectAddressController = TextEditingController();
  TextEditingController projectDescriptionController = TextEditingController();
  TextEditingController projectPhotoController = TextEditingController();
  String? imagePath = "";
  List<String> projectPhotoURLs = [];

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath = pickedFile.path;

      setState(() {
        if (pickedFile != null) {
          imagePath = pickedFile.path;
        } else {
          print('No image selected.');
        }
        projectPhotoURLs.add(imagePath!);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    var designer = Constant.serviceProvider[0];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Upload project",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w300, fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldProfile(
              nameText: "Project name",
              icon: Icons.post_add_rounded,
              controller: projectNameController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldProfile(
              nameText: "Project date",
              icon: Icons.calendar_month_rounded,
              controller: projectDateController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldProfile(
              nameText: "Project address",
              icon: Icons.location_on,
              controller: projectAddressController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldProfile(
              nameText: "Project description",
              icon: Icons.description,
              controller: projectDescriptionController,
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: _pickImage,
              style: OutlinedButton.styleFrom(
                maximumSize: const Size(300, 55),
                padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                side: const BorderSide(
                    color: ColorManager.borderColor), // تخصيص لون الحدود
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // تخصيص زاوية الحواف
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Project photo",
                    style: TextStyle(
                        fontSize: 29,
                        color: ColorManager.textColor2,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.file_upload_rounded,
                    color: ColorManager.textColor2,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 50,
                  child: CustomElevatedButton(
                      height: 8,
                      width: 90,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: ColorManager.buttonColor,
                      text: "Cancel",
                      fontSize: 20,
                      colortext: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 50,
                  child: CustomElevatedButton(
                      height: 8,
                      width: 90,
                      onPressed: () {
                        if (projectNameController.text.isEmpty ||
                            projectDateController.text.isEmpty ||
                            projectAddressController.text.isEmpty ||
                            projectDescriptionController.text.isEmpty ||
                            imagePath == "" ||
                            projectPhotoURLs.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text(
                                  "Error",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 25),
                                ),
                                content: const Text(
                                  "Please fill in all input fields.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 28),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      "OK",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          designer.projects.add(Project(
                              projectName: projectNameController.text,
                              image:
                                  "https://media.istockphoto.com/id/1572025493/photo/interior-design-architecture-computer-generated-image-of-living-room-architectural.webp?b=1&s=170667a&w=0&k=20&c=J329lgUrtM6iTKDi0lIGecIPx-OnRUrUoFipLHz2fGk=",
                              name: designer.name,
                              projectDetails: projectDescriptionController.text,
                              projectImages: [
                                "https://images.unsplash.com/photo-1615874694520-474822394e73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZpcmVwbGFjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                "https://plus.unsplash.com/premium_photo-1686167991356-b60859d9a34f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGVja29yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                                "https://images.unsplash.com/photo-1613545325268-9265e1609167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGZpcmVwbGFjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                "https://media.istockphoto.com/id/1355535668/photo/scandinavian-bedroom-in-a-luxurious-cottage-house.webp?b=1&s=170667a&w=0&k=20&c=3FuINhqhE938p091RekxQrzF8iuvNcXpBNHNJweoCyk="
                              ]));
                          setState(() {});
                          Navigator.of(context)
                              .pushNamed(RouteConstants.myProjectsView);
                        }

                        /*      designer.projects.add(newProject);
                        setState(() {}); // إعادة بناء الواجهة الرسومية
                        Navigator.of(context)
                            .pushNamed(RouteConstants.myProjectsView);
                    */
                      },
                      color: ColorManager.primaryMainColor,
                      text: "Ok",
                      fontSize: 20,
                      colortext: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
