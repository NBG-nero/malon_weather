# malon_weather

Malon Weather is a two paged weather app that displays the city name, country name, current weather conditions and other details of a list of cities on the first page and on user interactions navigates to the second page for more weather details using openweathermap api. While building Malon Weather I couldnt find a way to get a list of cities and their current weather conditions from openweathermap, the other option was a downloaded json file that was out of date, so I generated a list from individual city weather data.

## Design ❄👌

-models
-services
-architecture: Provider
-assets/images
-widgets
-screens
-routes
-service-utils

## Packages

- provider: A wrapper around InheritedWidget to make them easier to use and more reusable
- json_serializable: Provides Dart Build System builders for handling JSON.
- json_annotation: Defines the annotations used by json_serializable to create code for JSON serialization and deserialization.
- http: A composable, Future-based library for making HTTP requests.
- weather_icons: Flutter library for using erikflowers/weather-icons. An icon pack with over 200 weather themed icons.
- fluttertoast:Toast Library for Flutter, Easily create toast messages in single line of code

## Dev_dependencies

build runner:

## How to run

-Open the Github project repository of Malon Weather .
-On the top right corner Fork the project and after that click on the green button representing to download the code.
-Now copy the Project Link URL.
-Now open the console palette in VsCode and type Git clone on the console palette.
-After that paste the project Link URL and press Enter , Select the folder where you want to -save the project and now open the project in VsCode.
-Run flutter pub get to download all packages and dependencies.
-After all the packages are loaded in VsCode , connect the device make sure of a stable internet connection then type the command Flutter Run on your terminal or ctrl + f5 and wait for the App to install .

## Contribution 🍕🗺

Future requests, issues, pull request and questions are welcome

## Credits 😎🤓

NBG-nero(owner of repo): Flutter Mobile Developer [(github)]
(https://github.com/NBG-nero)
