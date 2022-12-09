import 'package:portfolio/core/exports.dart';
import 'package:portfolio/data/models/specialization_model.dart';
import 'package:portfolio/widgets/custom_button.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Column(
        children: [
          const SizedBox(height: 200),
          SizedBox(
            height: 740,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: specializations.length,
                itemBuilder: (context, index) {
                  final snapshot = specializations[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: transparency,
                            blurRadius: 0,
                            offset: Offset(0, 0),
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            blurRadius: 20,
                            spreadRadius: 3,
                            offset: Offset(1, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: snapshot.color,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Image.asset(
                                  snapshot.image,
                                  height: 200,
                                  width: 200,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            snapshot.title,
                            textAlign: TextAlign.center,
                            style: CustomTheme.semiLargeText(context).copyWith(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            snapshot.description,
                            textAlign: TextAlign.center,
                            style: CustomTheme.mediumText(context).copyWith(
                              color: greyTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 50),
                          Container(
                            decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 70, vertical: 25),
                              child: Text(
                                "Find out more",
                                style: CustomTheme.mediumText(context).copyWith(
                                  color: backgroundColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
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
              TextButton(
                onPressed: () {
                  // contact me
                },
                child: Text(
                  "Contact me",
                  style: CustomTheme.semiLargeText(context).copyWith(
                    color: purpleColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
