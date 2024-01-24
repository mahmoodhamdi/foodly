import 'package:foodly/features/cart/presentation/views/cart_view.dart';
import 'package:foodly/features/home/presentation/views/home_view.dart';
import 'package:foodly/features/products/data/models/category_model.dart';
import 'package:foodly/features/products/presentation/views/all_categoris_view.dart';
import 'package:foodly/features/products/presentation/views/category_view.dart';
import 'package:foodly/features/products/presentation/views/nearby_foods.dart';
import 'package:foodly/features/products/presentation/views/products_view.dart';
import 'package:foodly/features/products/presentation/views/restuarants_view.dart';
import 'package:foodly/features/products/presentation/views/trending_foods.dart';
import 'package:foodly/features/profile/presentation/views/profile_view.dart';
import 'package:foodly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kAllCategoriesView = '/allCategoriesView';
  static const kProductsView = '/productsView';
  static const kCartView = '/cartView';
  static const kProfileView = '/profileView';
  static const kSearchView = '/searchView';
  static const kCategoryView = '/categoryView';
  static const kRestuarantView = '/restuarantView';
  static const kNearByView = '/nearByView';
  static const kAllRestuarantsView = '/allRestuarantsView';
  static const kAllFoodsView = '/allFoodsView';
  static const kNearByFoodsView = '/nearByFoodsView';
  static const kFoodsDetailView = '/foodsDetailView';
  static const kCartDetailView = '/cartDetailView';
  static const kRestaurantDetailView = '/restaurantDetailView';
  static const kOrderView = '/orderView';
  static const kTrendingFoodsView = '/trendingFoodsView';
  static const kAddressView = '/addressView';
  static const kOrderSuccessView = '/orderSuccessView';
  static const kNearbyRestuarants = '/kNearbyRestuarants';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kProductsView,
      builder: (context, state) => const ProductsView(),
    ),
    GoRoute(
      path: kCartView,
      builder: (context, state) => const CartView(),
    ),
    GoRoute(
      path: kProfileView,
      builder: (context, state) => const ProfileView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kAllCategoriesView,
      builder: (context, state) => const AllCategorisView(),
    ),
    GoRoute(
        path: kCategoryView,
        builder: (context, state) {
          final categoryModel = state.extra as CategoryModel;
          return CategoryView(categoryModel: categoryModel);
        }),
    GoRoute(
        path: kNearbyRestuarants,
        builder: (context, state) {
          return const RestuarentsView();
        }),
    GoRoute(
        path: kTrendingFoodsView,
        builder: (context, state) {
          return const TrendingFoods();
        }),
    GoRoute(
        path: kNearByFoodsView,
        builder: (context, state) {
          return const NearbyFoodsView();
        }),
  ]);
}
