import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String companyName = "NGSS";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CupertinoButton(
            //   child: const Text("IOS BUTTON"),
            //   onPressed: () {},
            // ),
            // TextButton(
            //   onPressed: () {},
            //   child: const Text("ANDROID BUTTON"),
            // ),
            Text(
              ("WELCOME TO $companyName SYSTEM"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

              // metni saga yatirir(sağ, sol, üst, alt, start, end, center ..)
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ("HELLO TO $companyName SYSTEM"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

              // metni saga yatirir(sağ, sol, üst, alt, start, end, center ..)
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ("HELLO TO $companyName SYSTEM"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

              // metni saga yatirir(sağ, sol, üst, alt, start, end, center ..)
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColors.welcomeColor,
                  ),
            ),
            Text(userName ?? ""),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      // metni alti çizili yapar(alt, üst, orta ..)
      decoration: TextDecoration.underline,

      fontStyle: FontStyle.italic,
      color: Colors.red,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.blueAccent;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
