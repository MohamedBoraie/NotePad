import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/Component.dart';

class layoutScreen extends StatefulWidget {
  @override
  State<layoutScreen> createState() => _layoutScreenState();
}

class _layoutScreenState extends State<layoutScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffFEDE3F),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.only(top: 50, bottom: 40),
                child: Text(
                  'NotePad',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              MyTextFormField(
                label: 'Search Notes',
                prefixIcon: Icons.search,
                keyboardType: TextInputType.text,
                borderRadius: 30,

                maxHeight: 50,
              ),

              Expanded(
                child: Column(
                  children: [

                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) => Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [
                                      const Text(
                                        'Todayes grocery list',


                                        style: TextStyle(fontSize: 20,),
                                      ),
                                      Spacer(),
                                      const Text(
                                        'june 22,2022 05:00 PM',


                                        style: TextStyle(fontSize: 15,),
                                      ),
                                    ],
                                  ),
                                ),
                                height: size.height / 11,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff82FFB0),
                                  borderRadius: BorderRadius.circular(15),
                                  border:
                                      Border.all(color: const Color(0xff82FFB0)),
                                ),
                                clipBehavior: Clip.hardEdge,
                              ),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 15,
                              ),
                          itemCount: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
