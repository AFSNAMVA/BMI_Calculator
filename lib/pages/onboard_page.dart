import 'package:bmi_calculator1/controllers/onboard_controller.dart';
import 'package:bmi_calculator1/data/models/onboard_item_model.dart';
import 'package:bmi_calculator1/widgets/global_button.dart';
import 'package:bmi_calculator1/widgets/onboard_header.dart';
import 'package:flutter/material.dart';

import '../widgets/onboard_item.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late final PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: currentPage);
    super.initState();
  }

  bool get isLastPage => currentPage == OnboardItemModel.items.length - 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OnboardHeader(controller: _pageController),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final item = OnboardItemModel.items[index];
                  return OnboardItem(
                    title: item.title,
                    description: item.desction,
                    imageUrl: item.imageUrl,
                  );
                },
                onPageChanged: (i) {
                  currentPage = i;
                  setState(() {});
                },
              ),
            ),
            GlobalButton(
              text: isLastPage ? 'sign up' : 'continue',
              onTap: () async {
                if (!isLastPage) {
                  currentPage++;
                  _pageController.animateToPage(
                    currentPage,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  // final SharedPreferences sharedPreferences =
                  //     await SharedPreferences.getInstance();
                  // await sharedPreferences
                  //     .setBool(PreferenceKeys.isSeenOnboard, true)
                  //     .then((v) => Navigate.replace(context, const BmiPage()));
                  OnboardController.navigateBmiPage(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
