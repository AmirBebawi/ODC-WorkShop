import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/pubCubit/cubit.dart';
import '../../cubit/pubCubit/states.dart';

class NavLayout extends StatelessWidget {
  const NavLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PubCubit,PubStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items:PubCubit.get(context).items,
            currentIndex:PubCubit.get(context).current_index,
            onTap: (index){
              PubCubit.get(context).changeNav(index);
            },
          ),
          body: PubCubit.get(context).Screen[PubCubit.get(context).current_index],
        );
      },
    );
  }
}