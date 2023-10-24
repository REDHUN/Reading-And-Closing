import 'package:flutter/material.dart';

import 'package:reading/screens/screentwo.dart';
import 'package:reading/widgets/homepagetext.dart';
import 'package:reading/widgets/newRate.dart';
import 'package:reading/widgets/textFiled.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ms1op = TextEditingController();
  final ms1clo = TextEditingController();
  final ms2op = TextEditingController();
  final ms2clo = TextEditingController();
  final mstest = TextEditingController();
  final hsd1op = TextEditingController();
  final hds1clo = TextEditingController();
  final hsd2op = TextEditingController();
  final hsd2clo = TextEditingController();
  final hsdtest = TextEditingController();
  final cngaop = TextEditingController();
  final cngaclo = TextEditingController();
  final cngbop = TextEditingController();
  final cngbclo = TextEditingController();
  final Twot = TextEditingController();

  void _openAddRate() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => const NewRate());
  }

  _submitData() {
    if (ms1op.text.isEmpty ||
        ms1clo.text.isEmpty ||
        hds1clo.text.isEmpty ||
        hds1clo.text.isEmpty ||
        cngaclo.text.isEmpty ||
        cngaop.text.isEmpty ||
        cngbclo.text.isEmpty ||
        cngbop.text.isEmpty ||
        Twot.text.isEmpty ||
        mstest.text.isEmpty ||
        hsdtest.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Please Enter All Values.'),
      ));
      return;
    }
    final n1ms = (int.parse(ms1clo.text) - int.parse(ms1op.text)) -
        int.parse(mstest.text);
    final n2ms = (int.parse(ms2clo.text) - int.parse(ms2op.text));
    final n1hsd = (int.parse(hsd2clo.text) - int.parse(hsd1op.text)) -
        int.parse(hsdtest.text);
    final n2hsd = (int.parse(hsd2clo.text) - int.parse(hsd2op.text));

    final ca = (int.parse(cngaclo.text) - int.parse(cngaop.text));
    final cb = (int.parse(cngbclo.text) - int.parse(cngbop.text));

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ScreenTwo(
                n1ms: n1ms,
                n2ms: n2ms,
                n1hsd: n1hsd,
                ca: ca,
                cb: cb,
                n2hsd: n2hsd,
              )),
    );
  }

  @override
  void dispose() {
    ms1op.dispose();
    ms1clo.dispose();
    hds1clo.dispose();
    hsd1op.dispose();
    ms2clo.dispose();
    ms2op.dispose();
    hds1clo.dispose();
    hsd1op.dispose();
    hsd2clo.dispose();
    hsd1op.dispose();
    mstest.dispose();
    hsdtest.dispose();
    Twot.dispose();
    cngaclo.dispose();
    cngaop.dispose();
    cngbclo.dispose();
    cngbop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'DAY BOOK',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 61, 5, 216),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          flexibleSpace: Container(
            decoration: const BoxDecoration(),
          ),
          actions: [
            Container(
              width: 150,
              child: Image.asset(
                'assets/cartoon.jpg',
              ),
            ),
            IconButton(
              onPressed: _openAddRate,
              icon: const Icon(Icons.settings),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(13),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(213, 17, 2, 233),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "MS 1:   ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextFiledDesign(
                                hint: 'Opening',
                                ControllerText: ms1op,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              TextFiledDesign(
                                hint: "Closing",
                                ControllerText: ms1clo,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const HomePageText(text: 'MS 2:  '),
                              TextFiledDesign(
                                hint: 'Opening',
                                ControllerText: ms2op,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: ms2clo,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 25,
                          width: 40,
                          child: TextFiledDesign(
                            hint: 'Test',
                            ControllerText: mstest,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(213, 17, 2, 233),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              HomePageText(text: 'HSD 1 : '),
                              TextFiledDesign(
                                hint: "Opening",
                                ControllerText: hsd1op,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: hds1clo,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              HomePageText(text: 'HSD 2 :  '),
                              TextFiledDesign(
                                hint: "Opening",
                                ControllerText: hsd2op,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: hsd2clo,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          height: 25,
                          width: 50,
                          child: TextFiledDesign(
                            hint: 'Test',
                            ControllerText: hsdtest,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(13),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(213, 17, 2, 233),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          HomePageText(text: 'CNG A :  '),
                          Container(
                            height: 25,
                            width: 100,
                            child: TextFiledDesign(
                                hint: "Opening", ControllerText: cngaop),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 25,
                            width: 100,
                            child: TextFiledDesign(
                                hint: "Closing", ControllerText: cngaclo),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          HomePageText(text: 'CNG B :  '),
                          Container(
                            height: 25,
                            width: 100,
                            child: TextFiledDesign(
                                hint: "Opening", ControllerText: cngbop),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 25,
                            width: 100,
                            child: TextFiledDesign(
                                hint: "Closing", ControllerText: cngbclo),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(13),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(213, 17, 2, 233),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      HomePageText(text: '2T :   '),
                      Container(
                        height: 25,
                        width: 100,
                        child: TextFiledDesign(
                            hint: "2T Sale", ControllerText: Twot),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: _submitData,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(213, 17, 2, 233),
                    )),
                    child: Text(
                      'Entry Expense',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ));
  }
}
