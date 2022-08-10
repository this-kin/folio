import 'package:portfolio/core/exports.dart';

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
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 260,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 263,
                          width: 520,
                          decoration: BoxDecoration(
                            color: darkGreyColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Container(
                            height: 260,
                            width: 530,
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                // BoxShadow(
                                //   color: transparency,
                                //   blurRadius: 0,
                                //   offset: Offset(0, 0),
                                // ),
                                // BoxShadow(
                                //   color: Color.fromRGBO(0, 0, 0, 0.04),
                                //   blurRadius: 10,
                                //   spreadRadius: 3,
                                //   offset: Offset(1, 3),
                                // ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(28),
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
                                        fontSize: 18,
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
          )
        ],
      ),
    );
  }
}
