import 'package:contact_book_app/imports/imports.dart';

InkWell appBarActionCard(BuildContext context, Color appBarActionColor,
    String appBarAsset, appBarFunction(),
    {bool haveBorder = false}) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: getWidth(16.0),
        vertical: getHeight(16.0),
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        appBarAsset,
        fit: BoxFit.cover,
        height: getHeight(24.0),
        width: getWidth(24.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: appBarActionColor,
        border: haveBorder
            ? Border.all(
                color: kInnerBorder,
              )
            : Border.all(
                width: 0,
                color: kWhiteBackground,
              ),
      ),
      height: getHeight(40.0),
      width: getWidth(40.0),
    ),
    onTap: () => appBarFunction(),
  );
}
