import 'package:swachh_samaaj/utilities/import.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/onboarding-screen-bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //SizedBox(child: Image.asset("assets/onboarding-screen-bg.png")),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getDeviceWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Text(
                            "Swachh\nSamaaj",
                            style: TextStyle(
                              color: kSecondaryLightTextColor,
                              fontSize: getDeviceWidth(70),
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getDeviceHeight(30)),

                      // ◉ Application Overview

                      Text(
                        "An app where you can notify the concerned\nauthorities for garbage clean-up,register complaints,educate yourself regarding wastage management,take part in protests,digital campaigns on waste management.",
                        style: TextStyle(
                          color: kSecondaryLightTextColor,
                          fontSize: getDeviceWidth(15),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(90),
                      ),
                      const OtpFields(),
                      SizedBox(height: getDeviceHeight(80)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kOnboardingButtonColor,
                          minimumSize: Size(
                            getDeviceWidth(150),
                            getDeviceHeight(45),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Home_Screen(),
                            ),
                          );
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: getDeviceWidth(18),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
