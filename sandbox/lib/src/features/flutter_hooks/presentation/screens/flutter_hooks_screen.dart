import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sandbox/src/features/flutter_hooks/domain/entities/person/entity.dart';

class FlutterHooksScreen extends HookWidget {
  static const routeName = "flutter_hooks";

  const FlutterHooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> counter = useState<int>(0);

    final ValueNotifier<PersonEntity?> personForRender =
        useState<PersonEntity?>(null);

    useEffect(() {
// final PersonEntity person = await

      getPersonFromApi(1).then((person) {
        if (person == null) return;
        personForRender.value = person;
      });

      return () {
        /* this is some cleanup */
      };
    }, []);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Current value: ${counter.value}"),
            const SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () => counter.value++,
              child: const Text("Increment"),
            ),
            const SizedBox(
              height: 8,
            ),
            if (personForRender.value != null) Text(personForRender.value!.name)
          ],
        ),
      ),
    );
  }
}

Future<PersonEntity?> getPersonFromApi(int personId) async {
  try {
    final Uri url = Uri.parse('https://swapi.dev/api/people/$personId/');

    final response = await http.get(url);
    final personJson = jsonDecode(response.body);
    final person = PersonEntity.fromJson(personJson);
    return person;
  } catch (e) {
    log("This is error: $e");
  }
  return null;
}
