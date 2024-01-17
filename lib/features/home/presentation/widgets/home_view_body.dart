import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/core/constants/constants.dart';
import 'package:foodly/features/home/presentation/manager/navigation_bar_cubit/navigation_bar_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: Scaffold(
        body: Stack(children: [
          Container(
            color: kOffWhite,
            width: kWidth,
            height: kHieght,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
                  builder: (context, state) {
                    return BottomNavigationBar(
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
                    );
                  },
                )),
          )
        ]),
      ),
    );
  }
}
