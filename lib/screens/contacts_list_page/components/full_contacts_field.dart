import 'package:contact_book_app/imports/imports.dart';

class FullContactsField extends StatelessWidget {
  const FullContactsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (_, __) => Column(
        children: [
          ListTile(
            title: Text(
              // edit
              "AAAAaaaa",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(
              // edit
              "894613",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            leading: Container(
              width: getWidth(53.0),
              decoration: BoxDecoration(
                // edit
                borderRadius: BorderRadius.circular(16.0),
                color: kBlackBackground,
              ),
              alignment: Alignment.center,
              // edit
              child: Text(
                "AGREE",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactFullViewPage(),
              ),
            ),
          ),
          const Divider(
            color: kGrayScaleLine,
            height: 1.0,
          ),
        ],
      ),
      itemCount: 30,
    );
  }
}
