import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EventCategoriesItemCard extends StatefulWidget {
  EventCategoriesItemCard({
    Key? key,
  }) : super(key: key);

  @override
  State<EventCategoriesItemCard> createState() =>
      _EventCategoriesItemCardState();
}

class _EventCategoriesItemCardState extends State<EventCategoriesItemCard> {
  int eventCategoriesItemCard = 10;

  // EventCategoriesItemCard({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: eventCategoriesItemCard,
      itemBuilder: (context, builder) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // width: 100.w,
            // height: 50.h,
            child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: [
                Column(
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Hotels',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Hotels',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Hotels',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 20),
    );
  }
}
