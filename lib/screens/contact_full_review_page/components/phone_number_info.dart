import 'package:contact_book_app/imports/imports.dart';

class PhoneNumberInfo extends StatelessWidget {
  const PhoneNumberInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: getWidth(16.0), right: getWidth(8.0)),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Mobile\n",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontSize: 14.0),
                        ),
                        TextSpan(
                          text: "46426813135",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: kGrayScaleTitleActive),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                  ),
                  ActionsCard(
                    "assets/icons/chat.svg",
                    kWhiteBackground,
                    svgColor: kGrayScaleBody,
                  ),
                  ActionsCard(
                    "assets/icons/call.svg",
                    kWhiteBackground,
                    svgColor: kGrayScaleBody,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              bottom: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LowerActionsCard(
                  "Share location",
                  "assets/icons/share.svg",
                  kPurpleBackground,
                ),
                LowerActionsCard(
                  "Qr code",
                  "assets/icons/qr-code.svg",
                  kGrayScaleLine,
                  lowerActsSvgColor: kTextColor,
                ),
                LowerActionsCard(
                  "Share contact",
                  "assets/icons/send.svg",
                  kSuccessDarkMode,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
