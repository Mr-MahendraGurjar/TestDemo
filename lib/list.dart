import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Todo   I did this task in 2 ways
//Todo  1). without state management ------  2). with state-management(Provider) ---> you can just uncomment and comment other one to test it.
//Todo --> first way(This is normal way, i use custom model and use normal setState method)

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<IncrementModel> data = [];

  @override
  void initState() {
    for (int i = 0; i < 100; i++) {
      data.add(IncrementModel(count: 0));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) => Row(
        children: [
          Text(data[index].count.toString()),
          IconButton(
            onPressed: () {
              data[index].count++;
              setState(() {});
            },
            icon: const Icon(Icons.add),
            color: Colors.black,
          )
        ],
      ),
    ));
  }
}

class IncrementModel {
  int count;
  IncrementModel({this.count = 0});
}

//Todo -----> second way(with the help of state-management technique, i use provider as state- management here)

// class ListWidget extends StatefulWidget {
//   const ListWidget({super.key});
//
//   @override
//   State<ListWidget> createState() => _ListWidgetState();
// }
//
// class _ListWidgetState extends State<ListWidget> {
//   late final IncrementProvider incrementProvider;
//
//   @override
//   void initState() {
//     incrementProvider = IncrementProvider();
//     incrementProvider.initializeValue();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ChangeNotifierProvider<IncrementProvider>(
//       create: (context) => incrementProvider,
//       child: Consumer<IncrementProvider>(
//         builder: (context, value, _) => ListView.builder(
//           padding: const EdgeInsets.only(top: 10),
//           itemCount: value.data.length,
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.only(left: 10),
//             child: Row(
//               children: [
//                 Text(value.data[index].count.toString()),
//                 IconButton(
//                   onPressed: () {
//                     context.read<IncrementProvider>().incrementCount(index);
//                   },
//                   icon: const Icon(Icons.add),
//                   color: Colors.black,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }
//
// class IncrementModel {
//   int count;
//
//   IncrementModel({this.count = 0});
// }
//
// class IncrementProvider extends ChangeNotifier {
//   List<IncrementModel> data = [];
//
//   void incrementCount(int index) {
//     data[index].count++;
//     notifyListeners();
//   }
//
//   void initializeValue() {
//     for (int i = 0; i < 100; i++) {
//       data.add(IncrementModel(count: 0));
//     }
//   }
//
//   @override
//   void dispose() {
//     data.clear();
//     super.dispose();
//   }
// }
