import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sandbox/src/features/flutter_hooks/domain/entities/person/entity.dart';
import 'package:sandbox/src/features/flutter_hooks/presentation/hooks/use_debug_value_function.dart';

class FlutterHooksScreen extends HookWidget {
  static const routeName = "flutter_hooks";

  const FlutterHooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> counter = useState<int>(0);
    final ValueNotifier<PersonEntity?> personForRender =
        useState<PersonEntity?>(null);

    final ValueNotifier<int?> customHook =
        useDebugValueWithFunction<int>("Score of some sort", 0);

    final String randomString =
        useMemoized(() => _getStringOfCounterLength(counter.value), [
      counter.value,
    ]);

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
            Text("Random text of counter lenght: $randomString"),
            Text("Random custom hook value: ${customHook.value}"),
            const SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                counter.value++;
                customHook.value =
                    customHook.value != null ? customHook.value! + 1 : 1;
              },
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

  String _getStringOfCounterLength(int counter) {
    return _generateRandomLengthString(counter);
  }
}

String _generateRandomLengthString(int lenght) {
  final Random random = Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';

// this generates string from char codes
// so need to get char codes for each string
  final List<int> charCodes = Iterable.generate(lenght, (int currentValue) {
    // so here we want to get a random number from the l,enght of chars
    final int randomNumber = random.nextInt(chars.length);

    // now we have int

    // now we can get character code of element at taht poisiton

// we could return cahracter too, and then letter just join it
    final String character = chars[randomNumber];
    final int characterCodeUnit = chars.codeUnitAt(randomNumber);

    return characterCodeUnit;
  }).toList();

  final String value = String.fromCharCodes(charCodes);

  return value;
}

Future<PersonEntity?> getPersonFromApi(int personId) async {
  try {
    final Uri url = Uri.parse('https://swapi.dev/api/people/$personId/');

    final response = await http.get(url);
    final personJson = jsonDecode(response.body);
    final person = PersonEntity.fromJson(personJson);
    return person;
  } catch (e) {
    // log("This is error: $e");
  }
  return null;
}
