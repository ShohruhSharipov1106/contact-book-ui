import 'package:contact_book_app/imports/imports.dart';

class ContactFullViewPage extends StatelessWidget {
  const ContactFullViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: contactPageAppBar(context),
        body: Column(
          children: [
            const Expanded(
              flex: 7,
              child: ContactInfo(),
            ),
            Divider(
              thickness: getHeight(32.0),
              color: kGrayScaleBackground,
            ),
            const Expanded(
              flex: 9,
              child: PhoneNumberInfo(),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
