import 'package:flutter/material.dart';
import 'package:practica3_5b24/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView(
        children: [
          cardImage1(),
          imageFade(),
        ],
      ),
    );
  }

  Card cardImage1() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/img/huskies.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Dos huskies en la nieve',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox image2() {
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child: Image.network(
          'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTk2Njc0ODUxNzAyODQzMTk4/colors-of-siberian-huskies.png'),
    );
  }

  Stack imageFade() {
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTk2Njc0ODUxNzAyODQzMTk4/colors-of-siberian-huskies.png'),
        ),
      ],
    );
  }
}
