import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sipandumobile/modules/penduduk/bloc/penduduk_bloc.dart';
import 'package:sipandumobile/modules/penduduk/models/pendudukmodels/penduduk_model.dart';
import 'package:sipandumobile/modules/penduduk/screen/Penduduk_data_screen.dart';
import 'package:sipandumobile/modules/penduduk/screen/penduduk_loading_screen.dart';

class PendudukScreen extends StatefulWidget {
  @override
  PendudukScreenState createState() {
    return PendudukScreenState();
  }
}

class PendudukScreenState extends State<PendudukScreen> {
  PendudukBloc _pendudukBloc = PendudukBloc();

  @override
  void initState() {
    super.initState();
    // _pendudukBloc = BlocProvider.of<PendudukBloc>(context);
    // _pendudukBloc.add(GetPendudukEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // PendudukState pendudukState = context.watch<PendudukBloc>().state;
    return BlocProvider(
      create: (context) => PendudukBloc()..add(GetPendudukEvent()),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.deepOrange.shade500,
            backgroundColor: Colors.deepOrange.shade500,
            title: Text('Sipandu Mobile'),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: BlocListener<PendudukBloc, PendudukState>(
                  listener: (context, state) {
                    print('proses state');
                    print(state);

                    // TODO: implement listener
                  },
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade500,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                      ),
                      child: Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  'Total Rumah Tangga',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * .8,
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 60,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      height: 30,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          height: .7,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 25.0),
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'Cari',
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: BlocBuilder<PendudukBloc, PendudukState>(
                      builder: (context, state) {
                        // context.watch();
                        // print('ambil isina');
                        // print(context.toString());
                        // if (state is PendudukSucessState) {
                        //   ;
                        // }

                        if (state is PendudukLoadingState) {
                          return PendudukLoadingScreen();
                        } else if (state is PendudukSucessState) {
                          print('succes');
                          var _data = state.penduduk;
                          var _length = _data.data!.dataKeluarga!.length;
                          var data_penduduk = _data.data!.dataKeluarga!;

                          // return Container();
                          return GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                // maxCrossAxisExtent: 200,
                                childAspectRatio: 9 / 2,
                                crossAxisSpacing: 0,
                              ),
                              itemCount: _length,
                              itemBuilder: (context, index) {
                                var namaPenduduk =
                                    data_penduduk[index].bdtNama.toString();
                                var kk = data_penduduk[index].kk.toString();
                                var lg = data_penduduk[index].lg != null
                                    ? data_penduduk[index].lg.toString()
                                    : '-';
                                var lt = data_penduduk[index].lt != null
                                    ? data_penduduk[index].lt.toString()
                                    : '-';
                                return PendudukDataScreen(
                                    namaPenduduk: namaPenduduk,
                                    kk: kk,
                                    lg: lg,
                                    lt: lt);
                              });
                        } else {
                          return Container();
                        }
                      },
                    ))
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
