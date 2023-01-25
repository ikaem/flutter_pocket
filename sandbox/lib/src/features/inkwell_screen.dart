import 'package:flutter/material.dart';

class InkWellScreen extends StatelessWidget {
  static const routeName = "ink-well-screen";
  const InkWellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Material(
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.all(
              //   Radius.circular(50),
              // ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.fingerprint,
                size: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            child: InkWell(
              onTap: () {},
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
                child: const Text("Hello"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            child: InkWell(
              onTap: () {},
              child: const Text("Hello"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Material(
            child: Ink(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
                // good for background iamge
                image: DecorationImage(
                  image: NetworkImage(
                      "https://blog.logrocket.com/wp-content/uploads/2022/09/logrocket-logo-frontend-analytics.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: const Text("no way"),
                // child: Image.network(
                //     "https://blog.logrocket.com/wp-content/uploads/2022/09/logrocket-logo-frontend-analytics.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            child: InkWell(
              highlightColor: Colors.yellow,
              splashColor: Colors.green,
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text("Hello custom hightlight colors"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(20.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(20.0),
                    ),
                padding: const EdgeInsets.all(20.0),
                child: const Text("Hello custom border"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
