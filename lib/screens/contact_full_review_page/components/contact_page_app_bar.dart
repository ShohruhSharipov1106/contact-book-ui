

import 'package:contact_book_app/imports/imports.dart';

AppBar contactPageAppBar(BuildContext context) => AppBar(
      toolbarHeight: getHeight(80.0),
      leadingWidth: getWidth(72.0),
      leading: appBarActionCard(
        context,
        kWhiteBackground,
        "assets/icons/back.svg",
        () => Navigator.pop(context),
        haveBorder: true,
      ),
      actions: [
        appBarActionCard(
          context,
          kBluePrimary,
          "assets/icons/edit.svg",
          () => print("edit") 
        ),
        SizedBox(
          width: getWidth(16.0),
        ),
      ],
    );
