
import 'package:swachh_samaaj/screens/other/educate_screen.dart';
import 'package:swachh_samaaj/utilities/import.dart';

class Home_Screen extends StatelessWidget {
  Home_Screen({super.key});
  PageController pageController = PageController(viewportFraction: 0.75);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: getDeviceHeight(50),
      child: Scaffold(
        // extendBody: true,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const Otpscreen(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: kButtonColor,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getDeviceWidth(20)),
              child: Row(
                children: [
                  const Icon(
                    Icons.currency_exchange,
                    color: kButtonColor,
                    size: 25,
                  ),
                  SizedBox(
                    width: getDeviceWidth(10),
                  ),
                  const Icon(
                    Icons.notifications_outlined,
                    color: kButtonColor,
                    size: 30,
                  ),
                  SizedBox(
                    width: getDeviceWidth(10),
                  ),
                  const Icon(
                    Icons.search,
                    color: kButtonColor,
                    size: 32,
                  ),
                  SizedBox(
                    width: getDeviceWidth(10),
                  ),
                  CircleAvatar(
                    backgroundColor: kSecondaryLightColor,
                    radius: 25,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/user-avatar.png",
                        height: getDeviceHeight(30),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: kButtonColor,
          child: Icon(
            Icons.add,
            size: getDeviceHeight(30),
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(elevation: 5, items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_sharp,
              size: getDeviceHeight(30),
              color: kButtonColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EducateSC(),
                    ),
                  );
                },
                child: Icon(
                  Icons.school_sharp,
                  size: getDeviceHeight(30),
                  color: kButtonColor,
                ),
              ),
              label: '',
              backgroundColor: Colors.transparent),
        ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Activities",
                    style: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: getDeviceHeight(20)),
                SizedBox(
                  height: getDeviceHeight(180),
                  width: getDeviceWidth(300),
                  //color: Colors.blue,
                  //width: getDeviceWidth(35),
                  child: PageView.builder(
                    //dragStartBehavior: DragStartBehavior.start,
                    controller: pageController,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return _buildPageItem(position);
                    },
                  ),
                ),

                // const Placeholder(
                //   fallbackHeight: 150,
                //   fallbackWidth: 100,
                // ),
                SizedBox(height: getDeviceHeight(20)),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Campaigns",
                    style: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: getDeviceHeight(10)),
                Stack(
                  children: [
                    Container(
                      height: getDeviceHeight(170),
                      width: getDeviceWidth(330),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 25.0, right: 25, left: 10),
                                child: Text(
                                  "Murshidabad",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Text(
                                    "Theme - ",
                                    style: TextStyle(
                                        color: kButtonColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 18.0),
                                    child: Text(
                                      "Say no to\nplastic",
                                      style: TextStyle(
                                          color: kButtonColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: getDeviceHeight(130),
                            width: getDeviceWidth(130),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kButtonColor),
                            child: Image.asset(
                              "assets/M.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 155.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondaryColor,
                            minimumSize: Size(
                              getDeviceWidth(80),
                              getDeviceHeight(40),
                            ),
                          ),
                          onPressed: () {
                            //print("button taped");
                          },
                          child: Text(
                            'Join',
                            style: TextStyle(
                              color: kPrimaryBgColor,
                              fontWeight: FontWeight.bold,
                              fontSize: getDeviceWidth(18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: getDeviceHeight(20)),
                Stack(
                  children: [
                    Container(
                      height: getDeviceHeight(170),
                      width: getDeviceWidth(330),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 25.0, right: 25, left: 10),
                                child: Text(
                                  "Raourkela",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Text(
                                    "Theme - ",
                                    style: TextStyle(
                                        color: kButtonColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 18.0),
                                    child: Text(
                                      "Say no to\nplastic",
                                      style: TextStyle(
                                          color: kButtonColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: getDeviceHeight(130),
                            width: getDeviceWidth(130),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kButtonColor),
                            child: Image.asset(
                              "assets/B.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 155.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondaryColor,
                            minimumSize: Size(
                              getDeviceWidth(80),
                              getDeviceHeight(40),
                            ),
                          ),
                          onPressed: () {
                            //print("button taped");
                          },
                          child: Text(
                            'Join',
                            style: TextStyle(
                              color: kPrimaryBgColor,
                              fontWeight: FontWeight.bold,
                              fontSize: getDeviceWidth(18),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: getDeviceHeight(20)),
                Stack(
                  children: [
                    Container(
                      height: getDeviceHeight(170),
                      width: getDeviceWidth(330),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 25.0, right: 25, left: 10),
                                child: Text(
                                  "Balasore",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Text(
                                    "Theme - ",
                                    style: TextStyle(
                                        color: kButtonColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 18.0),
                                    child: Text(
                                      "Say no to\nplastic",
                                      style: TextStyle(
                                          color: kButtonColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: getDeviceHeight(130),
                            width: getDeviceWidth(130),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kButtonColor),
                            child: Image.asset(
                              "assets/W1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 155.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondaryColor,
                            minimumSize: Size(
                              getDeviceWidth(80),
                              getDeviceHeight(40),
                            ),
                          ),
                          onPressed: () {
                            //print("button taped");
                          },
                          child: Text(
                            'Join',
                            style: TextStyle(
                              color: kPrimaryBgColor,
                              fontWeight: FontWeight.bold,
                              fontSize: getDeviceWidth(18),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//* page Items */

Widget _buildPageItem(int index) {
  return Container(
    height: getDeviceHeight(150),
    width: getDeviceWidth(180),
    margin: const EdgeInsets.only(left: 7, right: 7),
    child: Stack(
      children: [
        Container(
          //height: getDeviceHeight(100),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(8),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/P3.jpg'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.add_location_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.cancel_rounded,
              color: Colors.red,
              size: 40,
            ),
          ),
        ),
      ],
    ),
  );
}
