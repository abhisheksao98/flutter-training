import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lifecycle_flutter/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() {
    debugPrint('1 . Page - CreatedState invoked');
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('2.Page - Iniliaze');
    setState(() {
      _count = 0;
      debugPrint('3.Page1 - setstate init invoked');
    });
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('4.page 1 - didchangedepend');
  }

  @override
  void didUpdateWidget(Page1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('5. Page 1 - DidUpdateWidget Invoked');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('6. Page 1 - DeActivate Invoked');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('7. Page 1 - Dispose Invoked');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('8 page1-build invoked');
    return Scaffold(
        appBar: AppBar(
          title: Text('Lifecycle Actiivity'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('You have Tap $_count times'),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Page2())));
                  },
                  child: Text('NextPage'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              _count++;
              debugPrint('9.Page1 - increase the count');
            });
          }),
          child: Icon(Icons.add),
        ));
  }
}
