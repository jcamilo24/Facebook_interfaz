import 'package:app_1_flutter/facebook_ui/widgets/circle_button.dart';
import 'package:app_1_flutter/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: const [
            _quick_buttom(
              label: 'Gallery',
              color: Color(0xff92BE87),
              iconData: CustomIcons.photos,
            ),
            SizedBox(
              width: 15,
            ),
            _quick_buttom(
              label: 'Tag Friends',
              color: Color(0xff2880D4),
              iconData: CustomIcons.user_friends,
            ),
            SizedBox(
              width: 15,
            ),
            _quick_buttom(
              label: 'Live',
              color: Color(0xffFB7171),
              iconData: CustomIcons.video_camera,
            ),
          ],
        ),
      ),
    );
  }
}

class _quick_buttom extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String label;

  const _quick_buttom({
    super.key,
    required this.iconData,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleButton(
            color: color.withOpacity(0.6),
            iconData: iconData,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
