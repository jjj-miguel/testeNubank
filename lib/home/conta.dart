import 'package:flutter/material.dart';

class conta extends StatelessWidget {
  const conta({required this.iconVisibility, super.key});
  final bool iconVisibility;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        elevation: 0,
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/minhaConta');
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Conta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xffc5c5c5))),
            ],
          ),
          subtitle: Text(
            iconVisibility ? "R\$ 100.000" : "******",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 150,
        width: double.infinity,
        child: ListView(
          itemExtent: 110,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(40),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.pix,
                      size: 40,
                      color: Color(0xff191919),
                    )),
                Text("Pix")
              ]),
            ),
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(40),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.payment_outlined,
                      size: 40,
                      color: Color(0xff191919),
                    )),
                Text("Pagar")
              ]),
            ),
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(40),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.volunteer_activism,
                      size: 40,
                      color: Color(0xff191919),
                    )),
                Text("Empréstimo")
              ]),
            ),
            Container(
              child: Column(children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(40),
                    )),
                    onPressed: () {},
                    icon: Icon(
                      Icons.payments_sharp,
                      size: 40,
                      color: Color(0xff191919),
                    )),
                Text("Pagar")
              ]),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        color: Color(0xFFF5F5F5),
        elevation: 0,
        child: ListTile(
          leading: Icon(Icons.payment_outlined),
          title: Text('Meus cartões'),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        color: Color(0xFFF5F5F5),
        child: ListTile(
          title: Text('Guarde seu dinheiro em caixinhas'),
          subtitle: Text("Acessando a área de planejamento"),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Divider(),
      Container(
          child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cartão de Crédito",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ))),
      SizedBox(
        height: 5,
      ),
      Text(
        "Fatura fechada",
        style: TextStyle(fontSize: 15, color: Color(0xff827a7a)),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        "R\$2.123,39",
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "Vencimento dia 15",
        style: TextStyle(fontSize: 15, color: Color(0xff827a7a)),
      ),
      SizedBox(
        height: 15,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text("Renegociar", style: TextStyle(color: Colors.black)),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffdad2dc)),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Divider(),
      Container(
          child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Empréstimo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ))),
      Text("Tudo certo! Você está em dia."),
      SizedBox(
        height: 15,
      ),
      Divider(),
      Container(
          child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Descubra Mais",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffc5c5c5))),
        ],
      ))),
      SizedBox(
        height: 8,
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('images/seguroVida.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seguro de Vida',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Cuide bem de quem você ama de um jeito simples',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Cor do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    // Ação do botão
                  },
                  child:
                      Text('Conhecer', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
