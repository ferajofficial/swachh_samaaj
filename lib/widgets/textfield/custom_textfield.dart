import 'package:swachh_samaaj/utilities/import.dart';

class CustomTextField {
  static Widget textField(
    String title, {
    bool isPassword = false,
    bool isNumber = true,
    int? length,
    TextEditingController? textController,
    int lines = 1,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getDeviceHeight(2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getDeviceHeight(10),
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kSecondaryLightTextColor,
              fontSize: getDeviceWidth(15),
            ),
          ),
          SizedBox(
            height: getDeviceHeight(2),
          ),
          TextFormField(
            maxLines: lines,
            controller: textController,
            maxLength: length,
            inputFormatters: [
              LengthLimitingTextInputFormatter(length),
            ],
            obscureText: isPassword,
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            decoration: InputDecoration(
              prefixText: "+91",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(6),
              ),
              fillColor: kSecondaryLightColor,
              filled: true,
            ),
          )
        ],
      ),
    );
  }
}
