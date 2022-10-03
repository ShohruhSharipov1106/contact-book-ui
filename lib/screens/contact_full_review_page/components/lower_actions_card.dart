import 'package:contact_book_app/imports/imports.dart';

class LowerActionsCard extends StatelessWidget {
  String lowerActsSubtitle;
  String lowerActsIcon;
  Color lowerActsColor;
  Color lowerActsSvgColor;
  LowerActionsCard(
      this.lowerActsSubtitle, this.lowerActsIcon, this.lowerActsColor,
      {this.lowerActsSvgColor = kWhiteBackground});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionsCard(
          lowerActsIcon,
          lowerActsColor,
          svgColor: lowerActsSvgColor,
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        Text(
          lowerActsSubtitle,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
