class IUser {
  void read() {}

  void write() {}

  void update() {}

  void delete() {}
  var name;
}

class UserOperation implements IUser {
  void myOwnMethod() {
    print("My Own Method");
  }

  @override
  var name;

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void read() {
    // TODO: implement read
  }

  @override
  void update() {
    // TODO: implement update
  }

  @override
  void write() {
    // TODO: implement write
  }
}

void main() {
  var user = UserOperation();
  user.read();
  user.write();
  user.update();
  user.delete();
  user.myOwnMethod();
}
