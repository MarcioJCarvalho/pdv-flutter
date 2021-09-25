//classe da minha tela principal
import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/app.dart';

// exemplo de StatefulWidget
class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDV'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Gavony'),
              accountEmail: Text('lojagavony@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                //radius: 60.0,
                //backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH4QHzex5edUdNvmGdEyqNE5z25flxmdasjBygto0q87Vx3S6RtW_SojKUl3ljUEmK_xA&usqp=CAU')),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.group_add_sharp),
              title: Text('Cadastrar Cliente'),
              onTap: () {Navigator.of(context).pushNamed(App.HOME);},
            ), 
          ],
        ),
      ),
    );
  }
}