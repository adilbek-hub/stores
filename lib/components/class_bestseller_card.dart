// import 'package:flutter/material.dart';

// class BestsellerCard extends StatelessWidget {
//   const BestsellerCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 257,
//             width: double.infinity,
//             child: GridView.builder(
//               itemCount: 6,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 10.0,
//                 crossAxisSpacing: 10.0,
//                 childAspectRatio: 0.652,
//               ),
//               itemBuilder: (BuildContext context, int index) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         'assets/images/kgFutbolka.png',
//                         height: 50,
//                         width: 50,
//                       ),
//                       Stack(
//                         children: const [
//                           Positioned(
//                             top: 0,
//                             right: 0,
//                             child: Icon(
//                               Icons.favorite,
//                               color: Colors.red,
//                               size: 40,
//                             ),
//                           ),
//                         ],
//                       ),
//                       //Текст
//                       Text(
//                         'Item $index',
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 24.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:stores/components/class_scroll_container.dart';

class BestsellerCard extends StatelessWidget {
  const BestsellerCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 257,
            width: double.infinity,
            child: GridView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.652,
              ),
              itemBuilder: (BuildContext context, int index) {
                return const ScrollContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
