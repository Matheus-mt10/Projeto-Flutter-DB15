import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Meu primeiro App",
    home: TelaListaDeCompras(),
  ));
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Home Page"),
            centerTitle: true,
            titleTextStyle: const TextStyle(color: Colors.white),
            backgroundColor: Colors.black),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle),
                  hintText: "Digite o seu login",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.password), hintText: "Digite a sua senha"),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Login")),
              )
            ],
          ),
        ));
  }
}

class TelaListaDeCompras extends StatefulWidget {
  const TelaListaDeCompras({super.key});

  @override
  State<TelaListaDeCompras> createState() => _TelaListaDeComprasState();
}

class _TelaListaDeComprasState extends State<TelaListaDeCompras> {
  List<Produto> listaDeProdutos = [
    Produto("Ronaldinho", 10),
    Produto("Ronaldinho", 10)
    
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de compras"),
        ),
        body: ListView.builder(
            itemCount: listaDeProdutos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listaDeProdutos[index].nome),
              );
            }));
  }
}

class Produto {
  String nome = "";
  double preco = 0.0;

  Produto(String _nome, double _preco) {
    nome = _nome;
    preco = _preco;
  }
}
