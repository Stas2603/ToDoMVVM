import 'package:flutter/material.dart';

class GlobalGoalWidget extends StatelessWidget {
  const GlobalGoalWidget({
    Key? key,
    this.onTab,
    required this.image,
    required this.title,
  }) : super(key: key);

  final Function? onTab;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return GestureDetector(
      onTap: onTab!(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width * 0.8,
          height: height * 0.13,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            border: Border.all(color: Colors.black, width: width * 0.003),
            /*image: const DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),*/
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  width: width * 0.1,
                  height: height * 0.13,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    //border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Text('0/0'),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    width: width * 0.14,
                    height: height * 0.09,
                  ),
                  Text(title)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  width: width * 0.1,
                  height: height * 0.13,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    //border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Text('0 %'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
