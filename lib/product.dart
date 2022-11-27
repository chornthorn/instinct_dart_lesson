

import 'mixin.dart';

abstract class ProductAbstract {
  void read();

  void write();

  void update();
}

// product operation class implements product abstract class
class ProductOperation extends ProductAbstract {
  @override
  void read() {
    print("Read");
  }

  @override
  void update() {
    print("Update");
  }

  @override
  void write() {
    print("Write");
    privateMethod();
  }

  void privateMethod() {
    print("Private Method");
  }
}

// product controller class
class ProductController {
  final ProductAbstract productAbstract;

  ProductController(this.productAbstract);

  void read() {
    productAbstract.read();
  }

  void write() {
    productAbstract.write();
  }

  void update() {
    productAbstract.update();
  }
}


// usage
void main() {
  var productOperation = ProductOperation();
  var productController = ProductController(productOperation);
  productController.read();
  productController.write();
  productController.update();


}
