import 'package:basic_opp_dart/interface.dart';

class BaseOperation {
  void delete() {
    print("Delete");
  }
}

class ProductOperation extends BaseOperation {
  void read() {
    print("Read");
  }

  void write() {
    print("Write");
  }

  void update() {
    print("Update");
  }
}

mixin ProductMixin on BaseOperation {
  @override
  void delete() {
    print("delete");
    print('dfadfjalsdjfksldjfks');
  }
}

mixin MyMixin {
  void delete() {
    print("delete");
    print('my mixin');
  }
}


class ProductController extends BaseOperation with MyMixin {

  void delete() {
    super.delete();
  }
}
