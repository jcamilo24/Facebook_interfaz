import 'package:app_1_flutter/facebook_ui/widgets/circle_button.dart';
import 'package:app_1_flutter/facebook_ui/widgets/publication_item.dart';
import 'package:app_1_flutter/facebook_ui/widgets/quick_actions.dart';
import 'package:app_1_flutter/facebook_ui/widgets/stories.dart';
import 'package:app_1_flutter/facebook_ui/widgets/whats_on_your_mind.dart';
import 'package:app_1_flutter/icons/custom_icons_icons.dart';
import 'package:app_1_flutter/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      final publication = Publication(
        user: User(avatar: faker.image.image(), username: faker.person.name()),
        tittle: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(50000),
        sharesCount: random.integer(50000),
        currentUserReaction:
            Reaction.values[random.integer(Reaction.values.length - 1)],
      );
      publications.add(publication);
    }

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
        ),
        actions: const [
          CircleButton(
            color: Color(0xffBFBFBF),
            iconData: CustomIcons.search,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xffFE7574),
            iconData: CustomIcons.bell,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xff7BBAFF),
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xff1C86E4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          whatsOnYourMind(),
          SizedBox(height: 30),
          QuickActions(),
          SizedBox(height: 30),
          Stories(),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          ),
        ],
      ),
    );
  }
}
