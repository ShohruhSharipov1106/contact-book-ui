import 'package:contact_book_app/imports/imports.dart';


class LastestConversatins extends StatelessWidget {
  const LastestConversatins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(155.0),
      width: getWidth(375.0),
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: getWidth(10.0),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(6.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24), // Image border
                child: SizedBox.fromSize(
                  // Image radius
                  child: Image.network(
                    // edit

                    "https://images.unsplash.com/photo-1644147659993-d8fc5e72f61f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY0NDI0MzQ3Mg&ixlib=rb-1.2.1&q=80&w=1080",
                    fit: BoxFit.cover,
                    height: 103.84,
                    width: 103.84,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(8.78),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      // edit

                      text: "$__ - kontakt",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                    TextSpan(
                      // edit

                      text: "\n$__",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: kBlackBackground,
                          ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
