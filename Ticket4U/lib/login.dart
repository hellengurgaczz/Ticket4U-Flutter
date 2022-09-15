import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('imgs/home_screen.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Entrar'.toUpperCase(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        'Cadastre-Se'.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.alternate_email,
                            color: Colors.primaries.first,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(labelText: 'E-mail'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.lock,
                          color: Colors.primaries.first,
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Senha'),
                          obscureText: true,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          child: Icon(
                            Typicons.social_twitter,
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          child: Icon(
                            Typicons.social_youtube,
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.primaries.first,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
