import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: SizedBox(
              width: 100,
              child: Image.asset("imagens/logo.png"),
            ),
          ),
          leading: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/logo.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          actions: <Widget>[
            Container(
              width: 60,
              child: ElevatedButton(
                child: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 38, 25, 25),
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
        body: Container(
          color: const Color(0xFFF2F3F6),
          child: ListView(
            children: const  <Widget>[
               ProductCardItem(
                imagePath: "cachoeirasp.png",
                productName: "Cachoeira do Sagui, Emburá do Alto ",
                productDescription:
                    "A Cachoeira do Sagui é uma opção encantadora para quem busca uma pausa, ainda na na zona sul de São Paulo. ",
              ),
              ProductCardItem(
                imagePath: "museudasartessp.png",
                productName: "Museu de Arte de São Paulo Assis Chateaubriand",
                productDescription:
                    "Com mais de 11 mil obras para conhecer, levar sua familia e muito mais",
              ),
               ProductCardItem(
                imagePath: "olimpia.jpg",
                productName: "Olímpia",
                productDescription:
                    "Uma ótima opção para ir com a família, principalmente para as crianças, lá tem um parque aquático incrível, com diversas opções de brinquedos e até mesmo uma fazendinha dentro dele.",
              ),
               ProductCardItem(
                imagePath: "camposdojordao.jpg",
                productName: "Campos do Jordão",
                productDescription:
                    "Com certeza a cidade mais procurada para passeios românticos, ficando lotada no dia dos namorados.",
              ),
               ProductCardItem(
                imagePath: "parqueamantikir.jpg",
                productName: "Parque Amantikir",
                productDescription:
                    "O Amantikir é um parque todo arborizado e florido, com lagos, labirintos e uma linda vista da Serra da Mantiqueira. É um lugar encantador, onde você vai poder curtir",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCardItem extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;

  const ProductCardItem({
    required this.imagePath,
    required this.productName,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Image.asset("assets/logo.png"),
            ),
            title: Text(productName),
            subtitle: const Text("Local"),
            trailing: const Icon(Icons.more_vert),
          ),
          Container(
            child: Image.asset(imagePath),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(productDescription),
          ),
          ButtonTheme(
            child: ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Comprar'),
                  onPressed: () {
                    // Adicione a lógica de compra aqui
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Compra realizada"),
                          content: const Text(
                              "O produto foi adicionado ao carrinho."),
                          actions: <Widget>[
                            TextButton(
                              child: const Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('+'),
                  onPressed: () {
                    // Adicione a lógica de compartilhamento aqui
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
