import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/core/exports.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 200),
        SizedBox(
          height: 720,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: specializations.length,
            itemBuilder: (context, index) {
              final snapshot = specializations[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
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
                      const SizedBox(height: 40),
                      Text(
                        snapshot.description,
                        textAlign: TextAlign.center,
                        style: CustomTheme.mediumText(context).copyWith(
                          color: greyTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 60),
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
        const SizedBox(height: 50),
        Row(
          children: [],
        )
      ],
    );
  }
}
