import 'package:contact_book_app/imports/imports.dart';

class ActionsCard extends StatelessWidget {
  String actionsIcon;
  Color actionBackgroundColor;
  Color svgColor;
  ActionsCard(this.actionsIcon, this.actionBackgroundColor,
      {this.svgColor = kWhiteBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(50.0),
      width: getWidth(50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: actionBackgroundColor,
      ),
      padding: const EdgeInsets.all(13.0),
      margin: EdgeInsets.symmetric(
        horizontal: getWidth(10.0),
        vertical: getHeight(15.0),
      ),
      child: SvgPicture.asset(
        actionsIcon,
        height: getHeight(24.0),
        width: getWidth(24.0),
        color: svgColor,
      ),
    );
  }
}
