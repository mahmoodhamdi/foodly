import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/core/constants/constants.dart';
import 'package:foodly/features/cart/presentation/views/cart_view.dart';
import 'package:foodly/features/home/presentation/manager/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'package:foodly/features/products/presentation/views/products_view.dart';
import 'package:foodly/features/profile/presentation/views/profile_view.dart';
import 'package:foodly/features/search/presentation/views/search_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
final List<Widget> kPages =const [
      ProductsView(),
      SearchView(),
      CartView(),
      ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: Scaffold(
        body: BlocBuilder<NavigationBarCubit, NavigationBarState>(
          builder: (context, state) {
            return Stack(children: [
              kPages[context.read<NavigationBarCubit>().index],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                      currentIndex: context.read<NavigationBarCubit>().index,
                      onTap: (value) {
                        context
                            .read<NavigationBarCubit>()
                            .changeNavigationBarIndex(value);
                      },
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      selectedIconTheme: const IconThemeData(color: kSecondary),
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(
                              context.read<NavigationBarCubit>().index == 0
                                  ? AntDesign.appstore1
                                  : AntDesign.appstore_o),
                          label: "Home",
                        ),
                        const BottomNavigationBarItem(
                          icon: Icon(
                            Icons.search,
                          ),
                          label: "Search",
                        ),
                        const BottomNavigationBarItem(
                          icon: Badge(
                            label: Text("0"),
                            child: Icon(
                              FontAwesome.opencart,
                            ),
                          ),
                          label: "cart",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                              context.read<NavigationBarCubit>().index == 3
                                  ? FontAwesome.user_circle
                                  : FontAwesome.user_circle_o),
                          label: "profile",
                        ),
                      ],
                    )),
              )
            ]);
          },
        ),
      ),
    );
  }
}
