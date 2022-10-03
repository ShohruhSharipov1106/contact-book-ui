import 'package:contact_book_app/imports/imports.dart';

class SearchProvider extends ChangeNotifier {
  final TextEditingController _searchController = TextEditingController();

  get searchKontroller => _searchController;
  
}
