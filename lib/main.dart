// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ListView Example Sandoval',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView Example Sandoval'),
//         ),
//         body: ListView(
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               subtitle: Text('Go to Home'),
//               onTap: () {
//                 print("Navigating to Home");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profile'),
//               subtitle: Text('Go to Profile'),
//               onTap: () {
//                 print("Navigating to Profile");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.chat),
//               title: Text('Chat'),
//               subtitle: Text('Go to Chat'),
//               onTap: () {
//                 print("Navigating to Chat");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               subtitle: Text('Adjust settings'),
//               onTap: () {
//                 print("Navigating to Settings");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.notifications),
//               title: Text('Notifications'),
//               subtitle: Text('View notifications'),
//               onTap: () {
//                 print("Navigating to Notifications");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('Emails'),
//               subtitle: Text('Check emails'),
//               onTap: () {
//                 print("Navigating to Emails");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.camera),
//               title: Text('Camera'),
//               subtitle: Text('Open camera'),
//               onTap: () {
//                 print("Opening Camera");
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

// Definición de la clase Plato
class Plato {
  final String nombre;
  final double precio;
  final String imagen;

  Plato({required this.nombre, required this.precio, required this.imagen});
}

// Lista de platos
List<Plato> listaPlatos = [
  Plato(
    nombre: "Hamburguesa clásica",
    precio: 10.99,
    imagen: "assets/hamburguesa.png",
  ),
  Plato(
    nombre: "Pizza Margarita",
    precio: 12.99,
    imagen: "assets/pizza.png",
  ),
  Plato(
    nombre: "Ensalada César",
    precio: 8.99,
    imagen: "assets/ensalada.png",
  ),
  Plato(
    nombre: "Sushi variado",
    precio: 15.99,
    imagen: "assets/sushi.png",
  ),
  Plato(
    nombre: "Filete de salmón",
    precio: 18.99,
    imagen: "assets/filete.jpg",
  ),
  Plato(
    nombre: "Caldo de gallina",
    precio: 11.99,
    imagen: "assets/caldo.jpg",
  ),
  Plato(
    nombre: "Tallarin",
    precio: 14.99,
    imagen: "assets/tallarin.png",
  ),
  Plato(
    nombre: "Juane",
    precio: 16.99,
    imagen: "assets/juane.jpg",
  ),
  Plato(
    nombre: "Lomo saltado",
    precio: 13.99,
    imagen: "assets/lomo.jpg",
  ),
  Plato(
    nombre: "Hunacaina",
    precio: 17.99,
    imagen: "assets/huancaina.jpg",
  ),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carta de Menú',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carta de Menú'),
        ),
        body: ListView.builder(
          itemCount: listaPlatos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                listaPlatos[index].imagen,
                width: 80, 
                height: 80,
                fit: BoxFit.cover,  
              ),
              title: Text(listaPlatos[index].nombre),
              subtitle: Text('\$${listaPlatos[index].precio.toStringAsFixed(2)}'),
              onTap: () {
                print("Seleccionaste: ${listaPlatos[index].nombre}");
              },
            );
          },
        ),
      ),
    );
  }
}