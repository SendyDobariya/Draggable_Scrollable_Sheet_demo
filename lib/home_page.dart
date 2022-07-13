import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List lst = ['item1', 'item2', 'item3'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Stack(children: [
        Container(color: Colors.amber),
        DraggableScrollableSheet(
            initialChildSize: 0.03,
            maxChildSize: 0.8,
            minChildSize: 0.03,
            builder: (context, scrollController) {
              return ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: 30,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ],
                    ),
                  ),
                  // child: ListView.builder(
                  //     controller: scrollController,
                  //     itemCount: lst.length,
                  //     itemBuilder: (context, index) {
                  //       return ListTile(
                  //         title: Text(lst[index]),
                  //       );
                  //     }),
                ),
              );
            })
      ]),
    );
  }
}
