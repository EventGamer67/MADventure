// ignore_for_file: public_member_api_docs, sort_constructors_first

class OnboardPage {
  String title;
  String describe;
  String backgroundImage;
  String circleImage;

  OnboardPage({
    required this.title,
    required this.describe,
    required this.backgroundImage,
    required this.circleImage,
  });
}

List<OnboardPage> onboardpages = [
  OnboardPage(
    title: "Select the quest",
    describe: "A huge collection of different quests. Historical, children's, outdoors and many others...",
    backgroundImage: "",
    circleImage: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/10/15/09/istock-483629308.jpg",
  ),
  OnboardPage(
    title: "Complete the task!",
    describe: "Search for secret keys, location detection, step counting and much more...",
    backgroundImage: "",
    circleImage: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/10/15/09/istock-483629308.jpg",
  ),
  OnboardPage(
    title: "Become a Top Key Finder",
    describe: "User ratings, quest ratings, quest author ratings...",
    backgroundImage: "",
    circleImage: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/10/15/09/istock-483629308.jpg",
  )
];

