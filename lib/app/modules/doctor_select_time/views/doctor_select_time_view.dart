import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                color: Colors.blue),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Shruti Kedia',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'Upasana Dental Clinic, salt lake',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                              ),
                              Icon(
                                Icons.star_border,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Theme.of(context).colorScheme.tertiaryContainer,
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
            //color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Container(
                      width: 150,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: Theme.of(context).primaryColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Today, 23 Feb',
                            style: Theme.of(context).primaryTextTheme.bodyLarge,
                          ),
                          Text(
                            '9 slots available',
                            style: Theme.of(context).primaryTextTheme.bodySmall,
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          const SizedBox(height: 18),
          // TODO: sec3
          Center(
            child: Container(
              height: 64,
              width: 135,
              child: Column(
                children: [
                  Text(
                    'Today, 23 Feb',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'No slots available',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
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
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                        width: 306,
                        height: 54,
                        child: Text('Next availability on wed, 24 Feb')),
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
