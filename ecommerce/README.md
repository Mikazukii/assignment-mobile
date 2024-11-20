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

## Assignment 2

What is the purpose of const in Flutter? Explain the advantages of using const in Flutter code. When should we use const, and when should it not be used?
const makes objects immutable and allows them to be evaluated at compile time, improving performance by reducing memory usage. It boosts performance by avoiding repeated object creation during UI rebuilds and optimizing memory usage.
Const are using for values known at compile time and avoided for dynamic values that change during runtime.

Explain and compare the usage of Column and Row in Flutter. Provide example implementations of each layout widget!
Column arranges widgets vertically, while Row arranges them horizontally.
Here is an example :
`Column(children: [Text("Hello"), Text("World")]);  
Row(children: [Icon(Icons.star), Text("Rating")]);`

List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!
For this assignment I used Textfield input. There is also other input elements that I did not used as the DatePicker for example to chose a date

How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?
We can do it by using the ThemeData class and defining it in your MaterialApp. Implementing a theme ensures that your app has a consistent look and feel. This can include settings for colors, typography, button styles, etc. In my case I think I use the theme in the main.dart

How do you manage navigation in a multi-page Flutter application
I do it with the widget Navigator : navigation is a superposition of widget or sometimes we delete the previous one.

## Assignment 3

**1. Why create a model for JSON data?**  
A model structures JSON data into Dart objects, ensures consistency and simplifies manipulation; without it, managing complex data can lead to bugs or inefficiencies.

**2. Function of the `http` library**  
The `http` library handles HTTP requests like GET and POST, enabling the app to fetch and send data to a server.

**3. Function of `CookieRequest`**  
`CookieRequest` manages cookies for maintaining sessions, ensuring authenticated requests; sharing it across components ensures consistency of session data.

**4. Mechanism of data transmission**  
Input data is sent via an HTTP request, processed by the server, and returned as JSON. The app decodes this data, maps it to models, and updates the UI.

**5. Authentication mechanism**  
Flutter sends login or registration data to Django, which verifies credentials and creates a session. The app then receives a token or cookies for future authenticated requests, enabling navigation to secure menus. Logout clears session data on both ends.

**6. Explain how you implement the checklist above step by step! (not just following the tutorial).**
Fisrtly I connected the django app with the flutter one in the setting.py of the django project
Then I created the model for the form submission, and I add a widge to see the data we can add from the app and the django website
