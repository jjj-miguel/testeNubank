import 'package:flutter/material.dart';

import 'conta.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => AppBodyState();
}

//MainAppState guarda o estado -- contém o build
class AppBodyState extends State<AppBody> {
  late bool iconVisibility;

  @override
  void initState() {
    iconVisibility = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Color(0xFFBA4DE3))),
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            color: Color(0xFFF5F5F5),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  iconVisibility = !iconVisibility;
                });
              },
              icon: Icon(
                  iconVisibility
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Color(0xFFF5F5F5)),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  Icon(Icons.question_mark_outlined, color: Color(0xFFF5F5F5)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.mark_email_read_outlined,
                  color: Color(0xFFF5F5F5)),
            )
          ],
          backgroundColor: Color(0xFF8A05BE)),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(children: [
          conta(iconVisibility: iconVisibility),
        ]),
      ),
    );
  }
}
//       Container(
//         padding: EdgeInsets.all(10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("Conta",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, fontSize: 18)),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.arrow_forward_ios,
//                   color: Color(0xffc5c5c5)),
//             )
//           ],
//         ),
//       ),
//       Container(
//         margin: EdgeInsetsDirectional.only(start: 10),
//         child: Text(
//           "R\$100.000",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//         ),
//       ),
//       Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Container(
//               child: Column(children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.pix,
//                       color: Color(0xff191919),
//                     )),
//                 Text("Pix")
//               ]),
//             ),
//             Container(
//               child: Column(children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.payment_outlined,
//                       color: Color(0xff191919),
//                     )),
//                 Text("Pagar")
//               ]),
//             ),
//             Container(
//               child: Column(children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.volunteer_activism,
//                       color: Color(0xff191919),
//                     )),
//                 Text("Pagar Emprestimo")
//               ]),
//             ),
//             Container(
//               child: Column(children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.payments_sharp,
//                       color: Color(0xff191919),
//                     )),
//                 Text("Pagar")
//               ]),
//             ),
//           ],
//         ),
//       )
//     ],
//   ),
// ),
