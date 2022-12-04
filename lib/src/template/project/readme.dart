import 'package:mason_app_project/src/template/project_template.dart';

extension Main on FlutterProjectTemplate {
  String get mainTemplate =>
      """Screens - implementation of the interface of your program.
   This is everything related to the interface, for example widgets with controllers, the behavior of widgets,
asynchronous requests to the database, etc.

..screens/example_screen/performance
This is where the basic logic for [example_screen] is executed. Use [ExampleController]
only on this screen if you need to pass a value
then pass through parameters.
An example of using the GoRouter navigator;
context.go(Uri(path: '/users/123', queryParameters: {'filter': 'abc'}).toString());


..screens/example_screen/widgets
widgets are widgets that have controllers, these are widgets higher than the global widgets in the widget tree.
Widgets can have blocks for requests to RESTAPI, and receiving, deleting, etc. data from the server.
To get data from the server or to firebase, use bloc.
widgets can use the getx controller - both external and own, only for local reconstruction of the widget.
Also, each view has only its own unique widgets.

This structure is due to practicality and ease of perception, that is, all the components of the screen, their rearrangement and requests to the server
are in the same city and do not get lost in a large application.

../widgets 
This folder contains global widgets, they can be wrapper widgets imported from pub.dev.

dumd widgets are StatelessWidgets, they are static and do not rebuild,
they should be the most extreme in the widget tree.
smart widgets are both Stateless and Statefull widgets, they can have animations,
pass child and/or children widgets. There can be nice widgets but without controllers.
""";
}
