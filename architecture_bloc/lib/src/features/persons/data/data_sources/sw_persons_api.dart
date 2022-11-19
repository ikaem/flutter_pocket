import 'dart:io';
import 'dart:math';

import 'package:architecture_bloc/src/features/persons/data/dtos/person_dto.dart';
import 'package:collection/collection.dart';

class SwPersonsApi {
  final _personsRaw = [...personsRaw];
  // this would actually go ahead and fetch data
  // repository would be a wrapped aroudn this - and in this case, i guess repository would convert dto to an entity

// this would probably be good to have a service for this, to be able to return data
  // final Client client;

  Future<List<PersonDTO>> many() async {
    await Future.delayed(const Duration(milliseconds: 500));

    final random = Random().nextInt(2);

    if (random == 0) throw const HttpException("Failed to fetch persons");

    return _personsRaw;
  }

  Future<Person?> one(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final random = Random().nextInt(3);

    if (random == 0) throw const HttpException("Failed to fetch the person");
    if (random == 1) return null;

    return _personsRaw.firstWhereOrNull((person) {
      return person.id == id;
    });
  }
}

// mock data

const List<PersonDTO> personsRaw = [
  PersonDTO(
    id: 1,
    name: "Luke Skywalker",
    height: "172",
    mass: "77",
    hairColor: "blond",
    skinColor: "fair",
    eyeColor: "blue",
    birthColor: "19BBY",
    gender: "male",
    homeworld: "https://swapi.dev/api/planets/1/",
    films: [
      "https://swapi.dev/api/films/1/",
      "https://swapi.dev/api/films/2/",
      "https://swapi.dev/api/films/3/",
      "https://swapi.dev/api/films/6/"
    ],
    species: [],
    vehicles: [
      "https://swapi.dev/api/vehicles/14/",
      "https://swapi.dev/api/vehicles/30/"
    ],
    starships: [
      "https://swapi.dev/api/starships/12/",
      "https://swapi.dev/api/starships/22/"
    ],
    created: "2014-12-09T13:50:51.644000Z",
    edited: "2014-12-20T21:17:56.891000Z",
    url: "https://swapi.dev/api/people/1/",
  ),
  PersonDTO(
    id: 2,
    name: "Joe Skywalker",
    height: "172",
    mass: "77",
    hairColor: "blond",
    skinColor: "fair",
    eyeColor: "blue",
    birthColor: "19BBY",
    gender: "male",
    homeworld: "https://swapi.dev/api/planets/1/",
    films: [
      "https://swapi.dev/api/films/1/",
      "https://swapi.dev/api/films/2/",
      "https://swapi.dev/api/films/3/",
      "https://swapi.dev/api/films/6/"
    ],
    species: [],
    vehicles: [
      "https://swapi.dev/api/vehicles/14/",
      "https://swapi.dev/api/vehicles/30/"
    ],
    starships: [
      "https://swapi.dev/api/starships/12/",
      "https://swapi.dev/api/starships/22/"
    ],
    created: "2014-12-09T13:50:51.644000Z",
    edited: "2014-12-20T21:17:56.891000Z",
    url: "https://swapi.dev/api/people/1/",
  ),
  PersonDTO(
    id: 3,
    name: "Joan Skywalker",
    height: "172",
    mass: "77",
    hairColor: "blond",
    skinColor: "fair",
    eyeColor: "blue",
    birthColor: "19BBY",
    gender: "male",
    homeworld: "https://swapi.dev/api/planets/1/",
    films: [
      "https://swapi.dev/api/films/1/",
      "https://swapi.dev/api/films/2/",
      "https://swapi.dev/api/films/3/",
      "https://swapi.dev/api/films/6/"
    ],
    species: [],
    vehicles: [
      "https://swapi.dev/api/vehicles/14/",
      "https://swapi.dev/api/vehicles/30/"
    ],
    starships: [
      "https://swapi.dev/api/starships/12/",
      "https://swapi.dev/api/starships/22/"
    ],
    created: "2014-12-09T13:50:51.644000Z",
    edited: "2014-12-20T21:17:56.891000Z",
    url: "https://swapi.dev/api/people/1/",
  ),
  PersonDTO(
    id: 4,
    name: "Trish Skywalker",
    height: "172",
    mass: "77",
    hairColor: "blond",
    skinColor: "fair",
    eyeColor: "blue",
    birthColor: "19BBY",
    gender: "male",
    homeworld: "https://swapi.dev/api/planets/1/",
    films: [
      "https://swapi.dev/api/films/1/",
      "https://swapi.dev/api/films/2/",
      "https://swapi.dev/api/films/3/",
      "https://swapi.dev/api/films/6/"
    ],
    species: [],
    vehicles: [
      "https://swapi.dev/api/vehicles/14/",
      "https://swapi.dev/api/vehicles/30/"
    ],
    starships: [
      "https://swapi.dev/api/starships/12/",
      "https://swapi.dev/api/starships/22/"
    ],
    created: "2014-12-09T13:50:51.644000Z",
    edited: "2014-12-20T21:17:56.891000Z",
    url: "https://swapi.dev/api/people/1/",
  ),
  PersonDTO(
    id: 5,
    name: "Ted Skywalker",
    height: "172",
    mass: "77",
    hairColor: "blond",
    skinColor: "fair",
    eyeColor: "blue",
    birthColor: "19BBY",
    gender: "male",
    homeworld: "https://swapi.dev/api/planets/1/",
    films: [
      "https://swapi.dev/api/films/1/",
      "https://swapi.dev/api/films/2/",
      "https://swapi.dev/api/films/3/",
      "https://swapi.dev/api/films/6/"
    ],
    species: [],
    vehicles: [
      "https://swapi.dev/api/vehicles/14/",
      "https://swapi.dev/api/vehicles/30/"
    ],
    starships: [
      "https://swapi.dev/api/starships/12/",
      "https://swapi.dev/api/starships/22/"
    ],
    created: "2014-12-09T13:50:51.644000Z",
    edited: "2014-12-20T21:17:56.891000Z",
    url: "https://swapi.dev/api/people/1/",
  ),
  PersonDTO(
    id: 6,
    name: "Louise Skywalker",
    height: "172",
    mass: "77",
    hairColor: "blond",
    skinColor: "fair",
    eyeColor: "blue",
    birthColor: "19BBY",
    gender: "male",
    homeworld: "https://swapi.dev/api/planets/1/",
    films: [
      "https://swapi.dev/api/films/1/",
      "https://swapi.dev/api/films/2/",
      "https://swapi.dev/api/films/3/",
      "https://swapi.dev/api/films/6/"
    ],
    species: [],
    vehicles: [
      "https://swapi.dev/api/vehicles/14/",
      "https://swapi.dev/api/vehicles/30/"
    ],
    starships: [
      "https://swapi.dev/api/starships/12/",
      "https://swapi.dev/api/starships/22/"
    ],
    created: "2014-12-09T13:50:51.644000Z",
    edited: "2014-12-20T21:17:56.891000Z",
    url: "https://swapi.dev/api/people/1/",
  ),
];
