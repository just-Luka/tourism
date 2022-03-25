import 'package:eapp1/presentation/widgets/cards/setting/setting_card.dart';
import 'package:eapp1/presentation/widgets/texts/setting/account_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInCard extends StatelessWidget {
  const UserInCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
      child: SettingCard(
        height: 450,
        child: Column(
          children: [
            Transform(
              transform: Matrix4.translationValues(0.0, -55.0, 0.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(55)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: -5,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C4E03AQFrjiRDiDZ3lw/profile-displayphoto-shrink_200_200/0/1640194175939?e=1649894400&v=beta&t=nz7xgYHbwD2HXLkRBjAKYGgxh4Zwo3oetJSD7BxY6Bc'),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0.0, -30.0, 0.0),
              child: Text(
                'Luka Tsiklauri',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const AccountText(
              textLeft: 'Username',
              textRight: '@lukayen',
            ),
            const Divider(color: Colors.black),
            const AccountText(
              textLeft: 'Email',
              textRight: 'info.tsiklauri@gmail.com',
            ),
            const Divider(color: Colors.black),
            const AccountText(
              textLeft: 'Name',
              textRight: 'Luka Tsiklauri',
            ),
          ],
        ),
      ),
    );
  }
}