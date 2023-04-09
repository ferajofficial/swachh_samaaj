import 'package:swachh_samaaj/utilities/import.dart';

class OtpFields extends StatelessWidget {
  const OtpFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: getDeviceHeight(55),
          width: getDeviceWidth(55),
          child: TextFormField(
            onSaved: (pin1) {},
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
              fillColor: kSecondaryColor,
              filled: true,
              hintStyle: const TextStyle(color: kSecondaryLightColor),
              hintText: '0',
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHeight(55),
          width: getDeviceWidth(55),
          child: TextFormField(
            onSaved: (pin2) {},
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
              fillColor: kSecondaryColor,
              filled: true,
              hintStyle: const TextStyle(color: kSecondaryLightColor),
              hintText: '0',
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHeight(55),
          width: getDeviceWidth(55),
          child: TextFormField(
            onSaved: (pin3) {},
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
              fillColor: kSecondaryColor,
              filled: true,
              hintStyle: const TextStyle(color: kSecondaryLightColor),
              hintText: '0',
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHeight(55),
          width: getDeviceWidth(55),
          child: TextFormField(
            onSaved: (pin4) {},
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
              fillColor: kSecondaryColor,
              filled: true,
              hintStyle: const TextStyle(color: kSecondaryLightColor),
              hintText: '0',
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ],
    );
  }
}
