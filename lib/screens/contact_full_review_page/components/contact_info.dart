import 'package:contact_book_app/imports/imports.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.4),
            color: kGrayScaleBackground,
          ),
          height: getHeight(104.0),
          width: getWidth(104.0),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/images/white-boy.svg",
          ),
        ),
        Text(
          "gragae",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 18.0,
              ),
        ),
        Text(
          "462464512",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: getHeight(13.0),
              horizontal: MediaQuery.of(context).size.width * 0.12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionsCard(
                  "assets/icons/chat.svg",
                  kSuccessDefault,
                ),
                ActionsCard(
                  "assets/icons/call.svg",
                  kBluePrimary,
                ),
                ActionsCard(
                  "assets/icons/video.svg",
                  kRedBackground,
                ),
                ActionsCard(
                  "assets/icons/message.svg",
                  kGrayScaleLine,
                  svgColor: kGrayScaleBody,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
