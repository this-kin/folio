import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';

class SixthWidget extends StatelessWidget {
  const SixthWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Center(
            child: Text(
              "What People Say",
              style: CustomTheme.semiLargeText(context).copyWith(
                color: purpleColor,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: Text(
              "Trust By\nClients.",
              style: CustomTheme.largeText(context),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 355,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 12, left: 15, right: 15),
                          child: Container(
                            height: 350,
                            width: 600,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 0, 0, 0.05),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.04),
                                    blurRadius: 20,
                                    spreadRadius: 3,
                                    offset: Offset(1, 1),
                                  ),
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.04),
                                    blurRadius: 20,
                                    spreadRadius: 3,
                                    offset: Offset(1, 1),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Container(
                            height: 345,
                            width: 600,
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(40),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "“ Folio Designer is a clean and creative landing page that matches with any freelancer or designer, you can easily to build the page in Sketch or Figma.”",
                                      style: CustomTheme.mediumText(context)
                                          .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Row(
                                      children: [
                                        Image.asset(
                                          ConstanceData.ava,
                                          height: 45,
                                          width: 45,
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dash",
                                              style: CustomTheme.semiLargeText(
                                                      context)
                                                  .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            // const SizedBox(height: 15),
                                            Text(
                                              "UI8",
                                              style: CustomTheme.normalText(
                                                      context)
                                                  .copyWith(
                                                color: greyTextColor,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigatorButton(
                icon: ConstanceData.arrow_back,
                onPressed: () {
                  // go back
                },
              ),
              const SizedBox(width: 20),
              NavigatorButton(
                icon: ConstanceData.arrow_front,
                onPressed: () {
                  // go front
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}
