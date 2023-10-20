import 'package:bank_salamu_master/ui/widget/profile_menu_item.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widget/button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor),
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Sasssy',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_edit_profile.png',
                    title: 'Edit Profile',
                    onTap: () async {
                      if (await Navigator.pushNamed(context, '/pin-page') ==
                          true) {
                        Navigator.pushNamed(context, '/profile-edit');
                      }
                    }),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_pin.png',
                    title: 'My Pin',
                    onTap: () {
                      Navigator.pushNamed(context, '/pin-page');
                    }),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_wallet.png',
                    title: 'Wallet Setting',
                    onTap: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_reward.png',
                    title: 'My Rewards',
                    onTap: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_help.png',
                    title: 'Help Center',
                    onTap: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_logout.png',
                    title: 'Log Out',
                    onTap: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: 'Report a Problem',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
