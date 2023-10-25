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
  final twot = TextEditingController();

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
        twot.text.isEmpty ||
        mstest.text.isEmpty ||
        hsdtest.text.isEmpty ||
        ms2clo.text.isEmpty ||
        ms2clo.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Please Enter All Values.'),
      ));
      return;
    }
    final n1ms = (int.parse(ms1clo.text) - int.parse(ms1op.text)) -
        int.parse(mstest.text);
    final n2ms = (int.parse(ms2clo.text) - int.parse(ms2op.text));
    final n1hsd = (int.parse(hds1clo.text) - int.parse(hsd1op.text)) -
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
                twot: int.parse(twot.text),
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
    twot.dispose();
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
          elevation: 0,
          title: Text(
            'DAY BOOK',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 63, 255, 88),
          toolbarHeight: 100,
          flexibleSpace: Container(
            decoration: const BoxDecoration(),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(20),
              width: 50,
              height: 30,
              child: Image.asset(
                'assets/petrol3.png',
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 255, 88),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 255, 88),
                  ),
                  accountName: Text(
                    "Abhishek Mishra",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("abhishekm977@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' Change Rate'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' About Developer '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width / 10,
                ),
                Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 255, 88),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              HomePageText(text: "MS 1:   "),
                              TextFiledDesign(
                                hint: 'Opening',
                                ControllerText: ms1op,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: "Closing",
                                ControllerText: ms1clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
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
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: ms2clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 25,
                          width: MediaQuery.of(context).size.width / 8,
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
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 255, 88),
                    //borderRadius: BorderRadius.all(Radius.circular(20),),
                  ),
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
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: hds1clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
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
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: hsd2clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width / 8,
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
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 255, 88),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          HomePageText(text: 'CNG A :  '),
                          TextFiledDesign(
                              hint: "Opening", ControllerText: cngaop),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                          TextFiledDesign(
                              hint: "Closing", ControllerText: cngaclo),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          HomePageText(text: 'CNG B :  '),
                          TextFiledDesign(
                              hint: "Opening", ControllerText: cngbop),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                          TextFiledDesign(
                              hint: "Closing", ControllerText: cngbclo),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 255, 88),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      HomePageText(text: '2T :   '),
                      TextFiledDesign(hint: "2T Sale", ControllerText: twot),
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
                      Color.fromARGB(255, 63, 255, 88),
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
