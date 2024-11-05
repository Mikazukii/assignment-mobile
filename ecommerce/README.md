# ecommerce

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assignment 1

### Explain what are stateless widgets and stateful widgets, and explain the difference between them.

Both are widget, the difference is that the stateless widgets are static whereas the stateful ones are dynamic
Having static widget cost less memory and place whereas having dynamic one allows more possibity for the app

### Mention the widgets that you have used for this project and its uses.

I have used

- A widget for the bar in the top : displaying the name of the website and also a welcoming text
- A widget for the infoCard : displaying the name of the client, the cliend Id and the type of client (premium here)
- A widget for the 3 buttons : view products, add products and logout and show message when we click on them
- A final widget in main for the whole set of widget we have created

### What is the use-case for setState()? Explain the variable that can be affected by setState()

Set state is used for dynamism : indeed the variable affected are the stateful widget and the function update them.
A use-case will probably be the add of a product for example which will require an update of the widget.

### Explain the difference between const and final keyword.

Both keyword are going to set the variable immutable but final is more flexible and make the value immutable during the runtime and not necessary before the compilation as const does.

### Explain how you implemented the checklist above step-by-step.

I created a menu.dart file in ecommerce/lib and modified the main.dart to use features from the menu.dart
For the menu.dart I take inspiration of the tutorial and for adding more things like the differents colors of buttons, icons and text, I modified the differents classes and their widgets.
