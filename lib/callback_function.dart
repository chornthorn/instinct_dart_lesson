// callback function is a function that is passed as a parameter to another function

void main() {
  // callback function
  void myCallbackFunction() {
    print('This is my callback function');
  }

  // function that takes callback function as a parameter
  void myFunction(Function callback) {
    print('This is my function');
    callback();
  }

  // calling myFunction and passing myCallbackFunction as a parameter
  myFunction(myCallbackFunction);

  print('-----------------');

  var loginButton = Button(
    name: 'Login',
    onPressed: () {
      print('Login button pressed');
    },
  );
  loginButton.action();

  print('----------------- Text Input -----------------');

  var usernameTextInput = TextInput(
    label: 'Username',
    value: "jdfsdakjflajdkflajdkfjasdkfjas",
    onChanged: (value) {
      print('Username: $value');
    },
  );
  usernameTextInput.action();

  var passwordTextInput = TextInput.icon(
    label: 'Password',
    icon: 'lock',
    value: "jdfsdakjflajdkflajdkfjasdkfjas",
    onChanged: (value) {
      print('Password: $value');
    },
  );

  var loginStatus = LoginState.loggedOut;

  if (loginStatus == LoginState.loggedIn) {
    print('User is logged in');
  } else {
    print('User is not logged in');
  }

  print('-----------------');
  List<String> courses = ['Dart', 'Flutter', 'React', 'Node'];
}

class Button {
  final Function onPressed;
  final String name;

  Button({required this.name, required this.onPressed});

  void action() {
    print('Name: $name');
    onPressed();
  }
}

typedef ValueChanged = void Function(String? value);

class TextInput {
  // name property
  final ValueChanged onChanged;
  final String label;
  final String? value;

  // default constructor
  TextInput({required this.label, required this.onChanged, this.value});

  // named constructor
  TextInput.icon(
      {required this.label,
      required String icon,
      required this.onChanged,
      this.value}) {
    print('Icon: $icon');
  }

  // action is method
  void action() {
    print('Name: $label');
    onChanged(value);
  }
}

enum LoginState { loggedIn, loggedOut }
