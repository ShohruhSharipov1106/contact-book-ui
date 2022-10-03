import 'package:contact_book_app/imports/imports.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: getWidth(56.0),
          title: const Text("Contacts"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SearchField(),
              const LastestConversatins(),
              listTitle(context),
              SizedBox(
                height: getHeight(450.0),
                width: getWidth(375.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(16.0),
                        right: getWidth(8.0),
                      ),
                      child: SizedBox(
                        height: getHeight(450.0),
                        width: getWidth(340.0),
                        child: const FullContactsField(),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(10.0),
                      child: ListView.builder(
                        itemBuilder: (_, __) => Text(
                          alphabet().elementAt(__).toString(),
                        ),
                        itemCount: alphabet().length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
