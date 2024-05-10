import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join Us and Get \nEasy Travel Around The World',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Full Name'),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: const InputDecoration(
                hintText: 'Enter your full name',
              ),
            )
          ]),
        );
      }

      Widget nameInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Email Address'),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: const InputDecoration(
                hintText: 'testtravel@gmail.com',
              ),
            )
          ]),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Password'),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
              ),
            )
          ]),
        );
      }

      Widget hobbyInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Hobby'),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Your hobby',
              ),
            )
          ]),
        );
      }

      return Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput()
          ]));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          // create padding that symetric based on default Margin ini shared/theme.dart
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title()],
        ),
      ),
    );
  }
}
