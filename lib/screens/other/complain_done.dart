import 'package:swachh_samaaj/utilities/import.dart';

class Cdone extends StatelessWidget {
  const Cdone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryLightTextColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            //print("Button taped");
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: kButtonColor,
          ),
        ),
      ),
      body: Center(
        child: Lottie.asset(
          "assets/done.json",
        ),
      ),
    );
  }
}
