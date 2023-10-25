import 'package:flutter/material.dart';

import 'package:reading/widgets/lastpagetext.dart';

class LastScreen extends StatelessWidget {
  const LastScreen(
      {super.key,
      required this.nozzel1ms,
      required this.nozzle2ms,
      required this.nozzel1hsd,
      required this.nozzle2hsd,
      required this.nozzel1ca,
      required this.nozzle2ca,
      required this.netpay,
      required this.cashhad,
      required this.twot});
  final nozzel1ms;
  final nozzle2ms;
  final nozzel1hsd;
  final nozzle2hsd;
  final nozzel1ca;
  final nozzle2ca;
  final netpay;
  final cashhad;
  final twot;

  _grandtotal() {
    final grandtotal = ((nozzel1ms + nozzle2ms) * 108) +
        ((nozzel1hsd + nozzle2hsd) * 96.9) +
        ((nozzel1ca + nozzle2ca) * 86) +
        twot;
    return grandtotal.toString();
  }

  _netpay() {
    final netpay1 = (((nozzel1ms + nozzle2ms) * 108) +
            ((nozzel1hsd + nozzle2hsd) * 96.9) +
            ((nozzel1ca + nozzle2ca) * 86) +
            twot) -
        netpay;
    return netpay1.toString();
  }

  _short() {
    final short = cashhad -
        ((((nozzel1ms + nozzle2ms) * 108) +
                ((nozzel1hsd + nozzle2hsd) * 96.9) +
                ((nozzel1ca + nozzle2ca) * 86) +
                twot) -
            netpay);
    return short.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Sales Reports',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 255, 88),
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    const Center(
                      child:
                          LastPageText(text: 'Petrol Sale Report', size: 20.0),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NOZZLE 1 MS :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: nozzel1ms.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NOZZLE 2 MS :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: nozzle2ms.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        Total Sale (Petrol) :      ',
                            size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText:
                                    ((nozzel1ms + nozzle2ms) * 108).toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 255, 88),
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    const Center(
                        child: LastPageText(
                            text: 'Diesel Sale Report', size: 20.0)),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NOZZLE 1 HSD :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: nozzel1hsd.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NOZZLE 2 HSD :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: nozzle2hsd.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        Total Sale (Diesel) :      ',
                            size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: ((nozzel1hsd + nozzle2hsd) * 96.90)
                                    .toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 255, 88),
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Center(
                        child:
                            LastPageText(text: 'CNG Sale Report', size: 20.0)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NOZZLE 1 CNG :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: nozzel1ca.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NOZZLE 2 CNG :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: nozzle2ca.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        Total Sale (CNG) :      ',
                            size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText:
                                    ((nozzel1ca + nozzle2ca) * 86).toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 255, 88),
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child:
                          LastPageText(text: 'Total Sale Report', size: 20.0),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        Grant Total Sale :        ',
                            size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: _grandtotal(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        NET Amount :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: (_netpay()),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        Cash In Hand :        ', size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: cashhad.toString(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: '        Short / Excess :        ',
                            size: 15.0),
                        Container(
                          height: 25,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: _short(),
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
