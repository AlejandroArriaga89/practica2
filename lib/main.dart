import 'package:flutter/material.dart';
import 'image_carousel.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuracion',
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white70,
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.black87,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
          title: Center(
            child: Image.asset(
              'images/logo.png',
              width: 40, // Ajusta el ancho de tu logo según sea necesario
            ),
          ),
        ),
        backgroundColor: Colors.white70,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Hero(
                  tag: CarouselWithIndicatorDemo(),
                  child: CarouselWithIndicatorDemo(),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Honda Civic 2017', // Cambiar el nombre del producto
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Spacer(),
                              IconButton(
                                iconSize: 40.0,
                                icon: _isFavorited
                                    ? const Icon(
                                        Icons.favorite_border,
                                        color: Colors.black45,
                                      )
                                    : const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                onPressed: _toggleFavorite,
                              ),
                            ],
                          ),
                          Text(
                            '\$200,000.00 mxn',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.00,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Descripción del auto',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'El Honda Civic del 2017 es un automóvil compacto conocido por su confiabilidad, eficiencia de combustible y estilo moderno. Ofrece espacio interior generoso, '
                            'tecnología avanzada y una conducción cómoda. Es una opción popular en su categoría.',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Apartar o agendar visita', // Cambiar el texto del botón
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
