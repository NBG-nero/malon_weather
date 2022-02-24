# malon_weather

<p>
  
![Screenshot_20220224-170831](https://user-images.githubusercontent.com/75075446/155582099-499490b9-7a5b-4192-a87c-f1d46de8ad6e.png)
![Screenshot_20220224-170839](https://user-images.githubusercontent.com/75075446/155582115-66f6e1a8-8748-4f6f-bdfe-3a00411e7449.png)
![Screenshot_20220224-170853](https://user-images.githubusercontent.com/75075446/155582218-71dfec38-bb66-4687-ad46-d60406f291eb.png)
![Screenshot_20220224-170901](https://user-images.githubusercontent.com/75075446/155582240-b9bb21bd-b155-4fdc-b9fc-4c29e1eb48d2.png)


</p>

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
