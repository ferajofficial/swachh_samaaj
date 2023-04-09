import 'package:swachh_samaaj/utilities/import.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryLightTextColor,
      body: const Appbar(),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
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
          icon: Icon(
            Icons.school_sharp,
            size: getDeviceHeight(30),
            color: kButtonColor,
          ),
          label: '',
        ),
      ]),
    );
  }
}