import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() {
    debugPrint('1.Page2 - create state invoked');

    return _Page2State();
  }
}

class _Page2State extends State<Page2> {
  @override
  void inhitState() {
    super.initState();
    debugPrint('2 Pahge 2  - Initialize page 2');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('3. Page 2 - DidChangeDependencies Invoked');
  }

  @override
  void didUpdateWidget(Page2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('4. Page 2 - DidUpdateWidget Invoked');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('5. Page 2 - DeActivate Invoked');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('6. Page 2 - Dispose Invoked');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('7: Page 2 Build Method Invoked');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life Cycle Activities Demo - Page2'),
      ),
      body: Container(
        color: Colors.amberAccent,
        child: const Center(
          child: Text('Welcome to Page2'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back')),
    );
  }
}
