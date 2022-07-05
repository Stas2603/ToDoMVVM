import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:to_do/src/presentation/features/app_resources/locale_keys.g.dart';
import 'package:to_do/src/presentation/widgets/global_goal_widget.dart';
import 'package:to_do/src/presentation/widgets/list_tile_widget.dart';
import 'package:to_do/src/utils/custom_date_picker.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.jpg'),
          ),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 300),
                Positioned(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(75)),
                        color: Colors.blueAccent),
                  ),
                ),
                Positioned(
                  top: 225,
                  right: 0,
                  child: Container(
                    height: 64,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(75),
                            bottomLeft: Radius.circular(75)),
                        color: Colors.greenAccent),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: CustomDatePicker(
                        DateTime.now(),
                        width: 40,
                        height: 45,
                        initialSelectedDate: DateTime.now(),
                        selectionColor: const Color.fromARGB(255, 2, 61, 109),
                        selectedTextColor: Colors.white,
                        dateTextStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        dayTextStyle: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                        monthTextStyle: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              width: double.infinity,
              child: Center(child: _buildCategoryList()),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return Column(
      children: [
        Row(
          children: [
            CustomListTile(
              onTab: () {},
              image: 'assets/images/homework.png',
              title: LocaleKeys.homework.tr(),
            ),
            CustomListTile(
              onTab: () {},
              image: 'assets/images/workout.png',
              title: LocaleKeys.workout.tr(),
            ),
          ],
        ),
        Row(
          children: [
            CustomListTile(
              onTab: () {},
              image: 'assets/images/psychology.png',
              title: LocaleKeys.psychology.tr(),
            ),
            CustomListTile(
              onTab: () {},
              image: 'assets/images/food.png',
              title: LocaleKeys.food.tr(),
            ),
          ],
        ),
        Row(
          children: [
            CustomListTile(
              onTab: () {},
              image: 'assets/images/selfSkills.png',
              title: LocaleKeys.selfSkills.tr(),
            ),
            CustomListTile(
              onTab: () {},
              image: 'assets/images/shoppingList.png',
              title: LocaleKeys.shoppingList.tr(),
            ),
          ],
        ),
        GlobalGoalWidget(
          onTab: () {},
          image: 'assets/images/globalGoal.png',
          title: LocaleKeys.globalGoal.tr(),
        ),
      ],
    );
  }
}
