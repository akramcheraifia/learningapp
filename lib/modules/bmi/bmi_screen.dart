
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int agecounter = 0;
  int weightcounter = 0;
  double _height = 0;
  late String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 15, 31),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(255, 12, 15, 31),
        title: const Center(child: Text('Yahia cheraifia')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 27, 26, 46),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 100,
                          onPressed: () {
                            setState(() {
                              gender = 'Male';
                            });
                          },
                          icon: const Icon(
                            Icons.male,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'MALE',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: 100,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 27, 26, 46),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 100,
                          onPressed: () {
                            setState(() {
                              gender = 'female';
                            });
                          },
                          icon: const Icon(
                            Icons.female,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('FEMALE',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 27, 26, 46),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT', style: TextStyle(color: Colors.grey)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _height.toStringAsFixed(0),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider.adaptive(
                      thumbColor: Colors.pink,
                      value: _height,
                      onChanged: (newValue) {
                        setState(() {
                          _height = newValue;
                        });
                      },
                      min: 0,
                      max: 250,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 27, 26, 46),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT',
                              style: TextStyle(color: Colors.grey)),
                          Text('$weightcounter',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (weightcounter > 0) {
                                          weightcounter--;
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weightcounter++;
                                      });
                                    },
                                    icon: const Icon(Icons.add,
                                        color: Colors.white),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 27, 26, 46),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE',
                              style: TextStyle(color: Colors.grey)),
                          Text('$agecounter',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (agecounter > 0) {
                                          agecounter--;
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 68, 69, 84),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        agecounter++;
                                      });
                                    },
                                    icon: const Icon(Icons.add,
                                        color: Colors.white),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              double result = weightcounter / (_height * _height) * 10000;

              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('Result:'),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your BMI is:${result.toStringAsFixed(1)}'),
                            Text('Gender: $gender'),
                            Text('Age: $agecounter'),
                            Text('Weight: $weightcounter'),
                            Text('Height: ${_height.toStringAsFixed(0)}'),
                          ],
                        ),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          )
                        ],
                      ));
            },
            color: Colors.pink,
            minWidth: double.infinity,
            height: 50,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Text(
              'CALCULATE',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
