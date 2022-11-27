class ProductInterface {
  late String name;
  late String description;
}

class Product implements ProductInterface {

  @override
  String description;

  @override
  String name;

  Product(this.name, this.description);
}

abstract class ProductAbstract {

  void read();
  void write();
  void update(){
    print("Already Implemented");
  }
}

class ProductOperation extends ProductAbstract {
  @override
  void read() {

  }

  @override
  void write() {
    // TODO: implement write
  }

}

void main() {
  var product = Product("Product 1", "Product 1 Description");
  print(product.name);
  print(product.description);

  var productOperation = ProductOperation();
  productOperation.update();
}