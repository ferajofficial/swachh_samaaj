import 'package:flutter_dotted/flutter_dotted.dart';
import 'package:swachh_samaaj/utilities/import.dart';

class Ccampaign extends StatelessWidget {
  const Ccampaign({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
             // print("button taped");
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: kButtonColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                /*TEXTFILEDS*/

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter campaign theme",
                    style: TextStyle(
                        color: kButtonColor, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: getDeviceHeight(5)),
                Container(
                  height: getDeviceHeight(50),
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: 'Theme',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: getDeviceHeight(40)),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Area of campaign",
                    style: TextStyle(
                        color: kButtonColor, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: getDeviceHeight(5)),
                Container(
                  height: getDeviceHeight(50),
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: 'Area',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                /* IMAGE UPLOADING */

                SizedBox(height: getDeviceHeight(40)),
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upload Photo",
                      style: TextStyle(
                          color: kButtonColor, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: getDeviceHeight(5)),
                FlutterDotted(
                  color: Colors.grey,
                  gap: 8.0,
                  strokeWidth: 2.0,
                  child: GestureDetector(
                    onTap: () {
                      //uploading image
                      print("button tapped");
                    },
                    child: Container(
                      height: getDeviceHeight(250),
                      width: getDeviceWidth(320),
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage("assets/upload.png"),
                              height: 100,
                              color: Colors.grey,
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "   Upload Photo \n of the campaign",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                /*ELEVATED BUTTON => Done */

                SizedBox(height: getDeviceHeight(30)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kButtonColor,
                    minimumSize: Size(
                      getDeviceWidth(150),
                      getDeviceHeight(45),
                    ),
                  ),
                  onPressed: () {
                    print("button taped");
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
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
