import 'package:flutter/material.dart';

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
      required this.cashhad});
  final nozzel1ms;
  final nozzle2ms;
  final nozzel1hsd;
  final nozzle2hsd;
  final nozzel1ca;
  final nozzle2ca;
  final netpay;
  final cashhad;
  _grandtotal() {
    final grandtotal =
        nozzel1ms + nozzel1hsd + nozzel1ca + nozzle2ms + nozzle2hsd + nozzle2ca;
    return grandtotal.toString();
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
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Petrol Sale Report',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text('        NOZZLE 1 MS :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: nozzel1ms.toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text('        NOZZLE 2 MS :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: nozzel1ms.toString(),
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
                  const Text('        Total Sale (Petrol) :      '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: (nozzel1ms + nozzle2ms).toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Diesel Sale Report',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text('        NOZZLE 1 HSD :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: nozzel1hsd.toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text('        NOZZLE 2 HSD :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
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
                  Text('        Total Sale (Diesel) :      '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: (nozzel1hsd + nozzle2hsd).toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'CNG Sale Report',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text('        NOZZLE 1 CNG :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: nozzel1ca.toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text('        NOZZLE 2 CNG :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
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
                  Text('        Total Sale (CNG) :      '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: (nozzel1ca + nozzle2ca).toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Total Sale Report',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text('        Grant Total Sale :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: _grandtotal(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text('        NET Amount :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: netpay.toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text('        Cash In Hand :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: cashhad.toString(),
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text('        Short / Excess :        '),
                  Container(
                    height: 25,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                  )
                ],
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
