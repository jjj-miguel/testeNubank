import 'package:flutter/material.dart';
import 'package:helloworld/conta/historico.dart';

class MinhaConta extends StatelessWidget {
  const MinhaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          color: Color(0xFFF5F5F5),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark_outlined, color: Color(0xFFF5F5F5)),
          ),
        ],
        backgroundColor: Color(0xFF8A05BE),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(18, 5, 0, 2)),
            Text("Saldo disponível", style: TextStyle(fontSize: 22)),
            Text(
              "R\$13.503,23",
              style: TextStyle(fontSize: 19),
            ),
            Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                  leading: Icon(Icons.wallet_rounded),
                  title: Text(
                    "Saldo separado",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text("R\$250,00", style: TextStyle(fontSize: 17)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                  leading: Icon(Icons.monitor_heart_outlined),
                  title: Text(
                    "Gastos previstos",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text("R\$203,51", style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                  leading: Icon(Icons.attach_money_rounded),
                  title: Text(
                    "Gastos previstos",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text("Organize e conquiste objetivos",
                      style: TextStyle(fontSize: 17)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                itemExtent: 110,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(40),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.move_down_rounded,
                        size: 40,
                        color: Color(0xff191919),
                      ),
                    ),
                    Text("Depositar")
                  ]),
                  Column(children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(40),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.payment_outlined,
                        size: 40,
                        color: Color(0xff191919),
                      ),
                    ),
                    Text("Pagar")
                  ]),
                  Column(children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(40),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.replay_outlined,
                        size: 40,
                        color: Color(0xff191919),
                      ),
                    ),
                    Text(
                      "Débito Automático",
                      softWrap: true,
                      textAlign: TextAlign.center,
                    )
                  ]),
                  Column(children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(40),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.handshake_outlined,
                        size: 40,
                        color: Color(0xff191919),
                      ),
                    ),
                    Text("Empréstimo")
                  ]),
                  Column(children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(40),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.transform_rounded,
                        size: 40,
                        color: Color(0xff191919),
                      ),
                    ),
                    Text("Transferir")
                  ]),
                  Column(children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(40),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.signal_cellular_alt,
                        size: 40,
                        color: Color(0xff191919),
                      ),
                    ),
                    Text("Investir")
                  ]),
                ],
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Divider(height: 1),
            ),
            SizedBox(height: 1),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: ListTile(
                leading: Icon(
                  Icons.handshake_outlined,
                  size: 30,
                ),
                title: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Até ",
                      style: TextStyle(fontSize: 19),
                    ),
                    TextSpan(
                        text: "R\$ 50.000,00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19)),
                    TextSpan(
                      text: " disponíveis para empréstimo",
                      style: TextStyle(fontSize: 19),
                    ),
                  ]),
                ),
              ),
            ),
            Historico()
          ],
        ),
      ),
    );
  }
}
