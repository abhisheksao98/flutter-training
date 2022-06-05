import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/user_info.dart';

class userdetail extends StatelessWidget {
  const userdetail({Key? key}) : super(key: key);
  static const String routename = '/userdetails';

  @override
  Widget build(BuildContext context) {
    final userinfo uinfo =
        ModalRoute.of(context)!.settings.arguments as userinfo;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.verified),
        title: const Text('UserDetail'),
      ),
      body: SizedBox(
        width: 200,
        height: 200,
        child: Card(
          elevation: 20,
          color: Colors.purple,
          child: Column(
            children: [
              Row(
                children: [
                  const Text('Username : '),
                  const SizedBox(width: 10.0),
                  Text(uinfo.UserName),
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              Row(
                children: [
                  const Text('Password: '),
                  const SizedBox(width: 10.0),
                  Text(uinfo.Password)
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              Row(
                children: [
                  const Text('Email: '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(uinfo.email)
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('Mobile no : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(uinfo.mobileNo),
                ],
              ),
              const SizedBox(width: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
