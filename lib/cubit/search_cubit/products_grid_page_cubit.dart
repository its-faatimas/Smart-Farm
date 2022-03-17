import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'products_grid_page_state.dart';

class ProductsGridPageCubit extends Cubit<ProductsGridPageState> {
  ProductsGridPageCubit() : super(ProductsGridPageInitial());
}
