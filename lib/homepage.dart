import 'package:calculate_age/controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
 const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GetBuilder<HomePageControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "AGE CALCULATE",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    children: [
                      const Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        "${controller.todayDate.day} ${controller.months[controller.todayDate.month]} ${controller.todayDate.year} ",
                        style: const TextStyle(
                            color: Color(0xffCDDC39),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          controller.selectTodayData(context);
                        },
                        child: const Icon(
                          Icons.calendar_view_day_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    children: [
                      const Text(
                        "Date OF Birth ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        "${controller.dOB.day} ${controller.months[controller.dOB.month]}  ${controller.dOB.year} ",
                        style: const TextStyle(
                            color: Color(0xffCDDC39),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          controller.selectDOBDate(context);
                        },
                        child: const Icon(
                          Icons.calendar_view_day_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff333333),
                  ),
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 200,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "AGE",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${controller.ageDuration.years}",
                                      style: const TextStyle(
                                          color: Color(0xffcddc39),
                                          fontSize: 70,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 13),
                                      child: Text(
                                        "YEARS",
                                        style: TextStyle(
                                            color: Color(0xffcddc39),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "${controller.ageDuration.months} months | ${controller.ageDuration.days} days",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 170,
                            width: 2,
                            color: const Color(0xff999999),
                          ),
                          Container(
                            height: 200,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "NEXT BIRTHDAY",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                const Icon(
                                  Icons.cake,
                                  size: 40,
                                  color: Color(0xffcddc39),
                                ),
                                Text(
                                  "${controller.weeks[controller.nextWeekDay]}",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Text(
                                  "${controller.nextBirthDate.months} months | ${controller.nextBirthDate.days} days",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: const Divider(
                          thickness: 2.5,
                          color: Color(0xff999999),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            const Text("SUMMARY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffcddc39),
                                    fontSize: 17)),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Text("YEARS",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff999999),
                                              fontSize: 15)),
                                      Text("${controller.ageDuration.years}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff999999),
                                              fontSize: 18)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "MONTHS",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "${(controller.ageDuration.years) * 12 + (controller.ageDuration.months)}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("WEEKS",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff999999),
                                              fontSize: 15)),
                                      Text(
                                        "${(controller.todayDate.difference(controller.dOB).inDays / 7).floor()}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 18),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //////////////////////
                            //////////////////////
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        "  DAYS",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 14),
                                      ),
                                      Text(
                                        "  ${controller.todayDate.difference(controller.dOB).inDays}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "    HOURS",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 14),
                                      ),
                                      Text(
                                        "    ${controller.todayDate.difference(controller.dOB).inHours}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "  MINUTS",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 14),
                                      ),
                                      Text(
                                        "  ${controller.todayDate.difference(controller.dOB).inMinutes}",
                                         style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff999999),
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
