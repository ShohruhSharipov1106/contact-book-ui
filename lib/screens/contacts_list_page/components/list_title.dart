import 'package:contact_book_app/imports/imports.dart';

Container listTitle(BuildContext context) => Container(
      height: getHeight(26.0),
      width: getWidth(375.0),
      child: Text(
        "A",
        style: Theme.of(context).textTheme.bodyText1,
      ),
      decoration: const BoxDecoration(
        color: kGrayScaleBackground,
      ),
      margin: EdgeInsets.symmetric(
        vertical: getHeight(16.0),
      ),
      padding: EdgeInsets.only(
        left: getWidth(17.0),
        top: getHeight(4.0),
        bottom: getHeight(4.0),
      ),
    );
