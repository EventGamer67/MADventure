import 'package:flutter/material.dart';
import 'package:mad_venture/data/samples.dart';
import 'package:mad_venture/tools/theme.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  late final PageController _pageController;
  final List<OnboardPage> pages = onboardpages;
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  void _pageSelected(int pageIndex) {
    setState(() {
      activePage = pageIndex;
    });
  }

  void _nextPage() {
    if (activePage != pages.length - 1) {
      _pageController.animateToPage(activePage + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }else{
      //next screen
    }
  }

  void _skipPages() {
    _pageController.animateToPage(pages.length - 1,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/map_background.png')))),
        Container(
            decoration: BoxDecoration(
          color: MyTheme.backgroundColor.withOpacity(0.85),
        )),
        SizedBox(
            width: double.infinity,
            child: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: PageView.builder(
                              onPageChanged: (value) {
                                _pageSelected(value);
                              },
                              controller: _pageController,
                              itemCount: pages.length,
                              itemBuilder: (context, index) {
                                return OnBoardScreenPage(page: pages[index]);
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  _skipPages();
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: activePage != pages.length - 1
                                        ? Text(
                                            "Skip",
                                            style: TextStyle(
                                                color: MyTheme.whiteColor,
                                                fontSize: 24,
                                                fontFamily: MyTheme.font),
                                          )
                                        : const SizedBox()),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                children: List.generate(
                                    3,
                                    (index) => Container(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: activePage == index
                                                    ? MyTheme.accentColor
                                                    : Colors.white),
                                          ),
                                        )),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  _nextPage();
                                },
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(8),
                                    child: activePage == pages.length - 1
                                        ? Text(
                                            "Done",
                                            style: TextStyle(
                                                color: MyTheme.accentColor,
                                                fontSize: 24,
                                                fontFamily: MyTheme.font),
                                          )
                                        : Text(
                                            "Next",
                                            style: TextStyle(
                                                color: MyTheme.accentColor,
                                                fontSize: 24,
                                                fontFamily: MyTheme.font),
                                          )),
                              ),
                            ),
                          ],
                        )
                      ],
                    )))),
      ]),
    );
  }
}

class OnBoardScreenPage extends StatelessWidget {
  final OnboardPage page;
  const OnBoardScreenPage({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 130,
          foregroundImage: NetworkImage(page.circleImage),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          page.title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: MyTheme.font,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          page.describe,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontFamily: MyTheme.font, fontSize: 18),
        )
      ],
    );
  }
}
