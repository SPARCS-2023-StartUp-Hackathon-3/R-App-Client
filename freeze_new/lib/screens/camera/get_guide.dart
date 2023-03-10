import 'package:flutter/material.dart';
import 'package:freeze_new/data/sample.dart';

ImgSample imgSample = ImgSample();

class GetGuide extends StatefulWidget {
  const GetGuide({Key? key}) : super(key: key);

  @override
  _GetGuideState createState() => _GetGuideState();
}

class _GetGuideState extends State<GetGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 50,
        ),
        Container(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              width: 20,
            ),
            Container(
              height: 40,
              width: 40,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_forward)),
            ),
          ])
        ])),
        Container(
          child: Image.asset(
            'assets/images/guide1.png',
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          height: 366,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                30,
              ),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: GridView.builder(
            itemCount: imgSample.items.length, //item ??????
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //1 ?????? ?????? ????????? item ??????
              childAspectRatio: 1 / 1, //item ??? ?????? 1, ?????? 2 ??? ??????
              mainAxisSpacing: 10, //?????? Padding
              crossAxisSpacing: 10, //?????? Padding
            ),
            itemBuilder: (BuildContext context, int index) {
              //item ??? ????????? ?????? ??????
              return Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      imgSample.items[index]['selected'] =
                          !imgSample.items[index]['selected'];
                    }, // Image tapped
                    child: Image.asset(
                      imgSample.items[index]['asset'],
                      fit: BoxFit.cover, // Fixes border issues
                      width: 80.0,
                      height: 80.0,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}
