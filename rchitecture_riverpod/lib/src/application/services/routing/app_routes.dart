class AppRoutes {
  static const screenMain = "/";
  static const screenHome = "/home";
  static const screenFilm = "/screen-film";
  static const screenWeather = "/screen-weather";
  static const screenSignIn = "/screen-signin";

  static List<String> get routes => [
        screenHome,
        screenFilm,
        screenWeather,
        screenSignIn,
      ];
}
