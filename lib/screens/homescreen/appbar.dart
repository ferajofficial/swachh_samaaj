import 'package:swachh_samaaj/utilities/import.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryLightTextColor,
        elevation: 2,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: kButtonColor,
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
    );
  }
}
