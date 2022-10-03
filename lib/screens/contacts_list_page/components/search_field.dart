import 'package:contact_book_app/imports/imports.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(40.0),
      width: getWidth(343.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kInputField,
      ),
      margin: EdgeInsets.only(
        left: getWidth(16.0),
        right: getWidth(16.0),
        top: getHeight(26.0),
        bottom: getHeight(31.0),
      ),
      child: TextField(
        controller: context.watch<SearchProvider>().searchKontroller,
        style: const TextStyle(
          color: kBlackBackground,
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
