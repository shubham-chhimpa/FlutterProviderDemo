# Flutter Provider Demo

Flutter App that shows the usage of Flutter Provider State Management
## Demo 

![alt text](https://i.imgur.com/4KrZY8t.gif "Logo Title Text 1")


# 👉 Provider - Flutter Advanced State Management 👈



## 🍎 What is Flutter Provider ?

🍏 In Flutter State Management of variables is difficult, so people started using BLoC .

But BLoC is not easy to understand and there is a lot of Boilerplate code.

So Flutter introduces a new way to Manage State using Providers.



## 🍎How Provider Works?

🍏 So there are basically three things:

👉 ChangeNotifierProvider Widget

👉 Model Class with ChangeNotifier

👉 The Wigdets(in seperate class) for which the state to be managed

🍏 So the widgets for which the state to be managed are wrapped inside the ChangeNotifierProvider Widget

🍏 then the Model class is provided for the ChangeNotifierProvider

🍏 So whenever there is a state change in model class, it will send notification to each widget(only changed ones)

🍏 And the widgets then rebuild their ui



## 🍎 What's this Provider Demo App do?

🍏 So it is implementation of flutter Providers State Management Concept.

🍏 The App on Start fetches data from a api

And shows image and title from that data.

🍏 By clicking that fab(refresh) button it fetches new data from the same api with a random generated id...






