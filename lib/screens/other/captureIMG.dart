import 'package:swachh_samaaj/utilities/import.dart';

class Cimage extends StatelessWidget {
  const Cimage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: kButtonColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              //** BUTTON FOR TAKING THE PICTURE */

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
                    'Capture garbage picture',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getDeviceWidth(18),
                    ),
                  ),
                ),
              ),

              //** LOCATION MAP */

              SizedBox(height: getDeviceHeight(20)),
              Container(
                height: getDeviceHeight(230),
                width: getDeviceWidth(350),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),

              //** TEXTFILEDS  */

              SizedBox(
                height: getDeviceHeight(30),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Select area",
                    style: TextStyle(
                        color: kButtonColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: getDeviceHeight(5)),
              Container(
                height: getDeviceHeight(50),
                width: getDeviceWidth(300),
                decoration: const BoxDecoration(shape: BoxShape.rectangle),
                child: const TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: 'Area',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: getDeviceHeight(20),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Add more information",
                    style: TextStyle(
                        color: kButtonColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: getDeviceHeight(5)),
              Container(
                height: getDeviceHeight(50),
                width: getDeviceWidth(300),
                decoration: const BoxDecoration(shape: BoxShape.rectangle),
                child: const TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: 'Add info.',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: getDeviceHeight(20),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Category",
                    style: TextStyle(
                        color: kButtonColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: getDeviceHeight(5)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: getDeviceHeight(50),
                    width: getDeviceWidth(200),
                    decoration: const BoxDecoration(shape: BoxShape.rectangle),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 15),
                        hintText: 'Select Category',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),

              //**TEXT BUTTON => UPLOAD PHOTO*/

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Upload photo",
                      style: TextStyle(
                          color: kButtonColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              //**DONE BUTTON */

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
                    'Done',
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
