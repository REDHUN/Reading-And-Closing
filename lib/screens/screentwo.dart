import 'package:flutter/material.dart';
import 'package:reading/screens/lastPage.dart';
import 'package:reading/widgets/homepagetext.dart';
import 'package:reading/widgets/secondScreenTextFiled.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo(
      {super.key,
      required this.n1ms,
      required this.n2ms,
      required this.n1hsd,
      required this.n2hsd,
      required this.ca,
      required this.cb,
      required this.twot});
  final n1ms;
  final n2ms;
  final n1hsd;
  final n2hsd;
  final ca;
  final cb;
  final twot;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final lp = TextEditingController();

  final ags = TextEditingController();

  final sib = TextEditingController();

  final ptm = TextEditingController();

  final gpay = TextEditingController();

  final er = TextEditingController();

  final ep = TextEditingController();

  final idt = TextEditingController();

  final ch = TextEditingController();

  _submitdata() {
    if (lp.text.isEmpty ||
        ags.text.isEmpty ||
        sib.text.isEmpty ||
        ptm.text.isEmpty ||
        gpay.text.isEmpty ||
        er.text.isEmpty ||
        ep.text.isEmpty ||
        idt.text.isEmpty ||
        ch.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Please Enter All Values.'),
      ));
      return;
    }

    final cashhand = int.parse(ch.text);
    final netvalue = int.parse(lp.text) +
        int.parse(ags.text) +
        int.parse(sib.text) +
        int.parse(ptm.text) +
        int.parse(gpay.text) +
        int.parse(er.text) +
        int.parse(ep.text) +
        int.parse(idt.text);

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LastScreen(
                nozzel1ms: widget.n1ms,
                nozzle2ms: widget.n2ms,
                nozzel1hsd: widget.n1hsd,
                nozzle2hsd: widget.n2hsd,
                nozzle2ca: widget.cb,
                nozzel1ca: widget.ca,
                netpay: netvalue,
                cashhad: cashhand,
                twot: widget.twot,
              )),
    );
  }

  @override
  void dispose() {
    ags.dispose();
    lp.dispose();
    sib.dispose();
    ptm.dispose();
    gpay.dispose();
    er.dispose();
    ep.dispose();
    idt.dispose();
    ch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Expense Entry',
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(13),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 255, 88),
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Less Payments :  '),
                        SecondTextFiled(
                          data: lp,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'AGS :                      '),
                        SecondTextFiled(
                          data: ags,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'SIB :                        '),
                        SecondTextFiled(
                          data: sib,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Paytm :                   '),
                        SecondTextFiled(
                          data: ptm,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Gpay SIB :              '),
                        SecondTextFiled(
                          data: gpay,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Extra Reward:        '),
                        SecondTextFiled(
                          data: er,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Extra Power :          '),
                        SecondTextFiled(
                          data: ep,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      HomePageText(text: ' Indent :                    '),
                      SecondTextFiled(
                        data: idt,
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Cash In Hand :         '),
                        SecondTextFiled(
                          data: ch,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: _submitdata,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 63, 255, 88),
                  )),
                  child: Text(
                    'Find Short',
                    style: TextStyle(color: const Color.fromARGB(255, 8, 7, 7)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
