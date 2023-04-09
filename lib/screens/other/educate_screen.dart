import 'package:swachh_samaaj/utilities/import.dart';

class EducateSC extends StatelessWidget {
  const EducateSC({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) =>  Home_Screen(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: kButtonColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                "Educate Yourself.",
                style: TextStyle(
                  color: kPrimaryTextColor,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),

              //** BLOGS CONATAINER  */

              SizedBox(
                height: getDeviceHeight(20),
              ),
              Container(
                height: getDeviceHeight(170),
                width: getDeviceWidth(330),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 25),
                          child: Text(
                            "Water\npollution",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "https://www.figma.com/file\n/1ZzL2FhNaixbxd86S687CE/\nSwachh-Samaaj-(Beginner)\n?node-id=0%3A1&t=SIXp58aTLh\nhSrdDX-0",
                                style: TextStyle(
                                    color: kButtonColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        height: getDeviceHeight(120),
                        width: getDeviceWidth(100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/W1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getDeviceHeight(20),
              ),
              Container(
                height: getDeviceHeight(170),
                width: getDeviceWidth(330),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 25),
                          child: Text(
                            "Air\npollution",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "https://www.figma.com/file\n/1ZzL2FhNaixbxd86S687CE/\nSwachh-Samaaj-(Beginner)\n?node-id=0%3A1&t=SIXp58aTLh\nhSrdDX-0",
                                style: TextStyle(
                                    color: kButtonColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        height: getDeviceHeight(120),
                        width: getDeviceWidth(100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/P2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getDeviceHeight(20),
              ),
              Container(
                height: getDeviceHeight(170),
                width: getDeviceWidth(330),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 25),
                          child: Text(
                            "Noise\npollution",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "https://www.figma.com/file\n/1ZzL2FhNaixbxd86S687CE/\nSwachh-Samaaj-(Beginner)\n?node-id=0%3A1&t=SIXp58aTLh\nhSrdDX-0",
                                style: TextStyle(
                                    color: kButtonColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        height: getDeviceHeight(120),
                        width: getDeviceWidth(100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/N.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //** ELEVATED BUTTON => Article Posting */

              SizedBox(height: getDeviceHeight(20)),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kButtonColor,
                    minimumSize: Size(
                      getDeviceWidth(150),
                      getDeviceHeight(45),
                    ),
                  ),
                  onPressed: () {
                    //print("button taped");
                  },
                  child: Text(
                    'Post an article',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getDeviceWidth(18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SizedBox(
//   height: getDeviceHeight(30),
// ),
// Container(
//   height: getDeviceHeight(170),
//   width: getDeviceWidth(330),
//   decoration: BoxDecoration(
//       color: kSecondaryColor,
//       borderRadius: BorderRadius.circular(8)),
// ),
// SizedBox(
//   height: getDeviceHeight(30),
// ),
// Container(
//   height: getDeviceHeight(170),
//   width: getDeviceWidth(330),
//   decoration: BoxDecoration(
//       color: kSecondaryColor,
//       borderRadius: BorderRadius.circular(8)),
// ),
