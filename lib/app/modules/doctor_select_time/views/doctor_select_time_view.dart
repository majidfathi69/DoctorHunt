import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/doctor_select_time_controller.dart';

class DoctorSelectTimeView extends GetView<DoctorSelectTimeController> {
  const DoctorSelectTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO: sec1
          Container(
            height: 88,
            width: 335,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 15, 9.91),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('lib/assets/image/Ductor.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 2,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Shruti Kedia',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text('Upasana Dental Clinic, salt lake',
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for (int i = 0; i < 4; i++)
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                              ),
                              //TODO : unknow color
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color:
                                Theme.of(context).colorScheme.tertiaryContainer,
                          )),
                    ],
                  ))
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          // TODO: sec2
          Container(
            height: 54,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      //backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Tomorrow, 24 Feb',
                          style: Theme.of(context).primaryTextTheme.titleMedium,
                        ),
                        Text(
                          '9 slots available',
                          style: Theme.of(context).primaryTextTheme.bodySmall,
                        ),
                      ],
                    ),
                  ), // TODO: sec minimon size
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.onPrimary,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Today, 23 Feb',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'No slots available',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ));
              },
              itemCount: 20,
            ),
          ),
          const SizedBox(height: 18),
          // TODO: sec3
          Center(
            child: Container(
              height: 64,
              width: 135,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Today,23Feb',
                      style: Theme.of(context).textTheme.titleLarge),
                  //TODO: tiileLarge
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'No slots available',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ), //TODO :unknown color
                ],
              ),
            ),
          ),
          const SizedBox(height: 17),
          // TODO: sec4
          Center(
            child: Container(
              width: 306,
              height: 152,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(306, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      //backgroundColor: Theme.of(context).colorScheme.primary
                    ),
                    child: const Text('Next availability on wed, 24 Feb'),
                    //TODO : style
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 10),
                    child: Text(
                      'OR',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ), // TODO unknown color
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(306, 54),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1))),
                    child: Text(
                      'Contact Clinic',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                      //TODO : font
                    ),
                  )
                ],
              ),
            ),
          ),
          // TODO: sec5
          Container(
            margin: const EdgeInsets.all(20),
            color: Colors.amber,
          ),
          // TODO: sec6
          Container(
            margin: const EdgeInsets.all(20),
            color: Colors.amber,
          ),
        ],
      ),
      appBar: AppBar(),
    );
  }
}
