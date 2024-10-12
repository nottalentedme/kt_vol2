import 'provider/fake_api_provider.dart';

void main(List<String> arguments) async {
  final apiProvider = FakeApiProvider();
  final carts = await apiProvider.getCarts();
  for (var cart in carts){
    print("Cart: ${cart.id}, UserId: ${cart.userId}, products: ${cart.products} ", );
  } 
  
} 