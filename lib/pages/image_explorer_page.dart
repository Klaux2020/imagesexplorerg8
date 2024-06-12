import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageExplorerPage extends StatefulWidget {
  
  @override
  State<ImageExplorerPage> createState() => _ImageExplorerPageState();
}

class _ImageExplorerPageState extends State<ImageExplorerPage> {
  int indexHeroList =Random().nextInt(6);
  List<String> heroList = [
  "https://w7.pngwing.com/pngs/945/936/png-transparent-captain-america-hulk-thor-captain-america-comic-marvel-avengers-assemble-superhero-fictional-character.png",
  "https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/c/9/d/medium-poster-design-no-3303-ironman-poster-ironman-posters-for-original-imaggbyayfagz4jf.jpeg?q=90&crop=false",
  "https://m.media-amazon.com/images/S/pv-target-images/fa328f5427536c62b0e9c064b9999d5ae49f5f52203f2cdf0d4d4916f544469e._SX1080_FMjpg_.jpg",
  "https://image.api.playstation.com/vulcan/img/rnd/202011/0714/Cu9fyu6DM41JPekXLf1neF9r.png",
  "https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2023/08/mujer-maravilla-3.jpg?resize=1200%2C741&quality=55&strip=all&ssl=1",
  "https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2018/04/15/ant-man-and-wasp.jpg",
  ];  

  //double heith = 0;
  @override
  Widget build(BuildContext context) {

     return Scaffold(
      appBar: AppBar(
      title: Text("Image Explorer"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage( 
                    heroList[indexHeroList],
                    ),
                    fit: BoxFit.cover,
                    ),
                ),
              // child: Image.network(
              //    heroList[indexHeroList],
              //    fit:BoxFit.cover,
              // ),
            ),
            Divider(),
            Text(
              "Iron Man",
              style: TextStyle(
                fontSize: 25 , 
                fontWeight: FontWeight.bold
                ),
              ),
           Divider(),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
              onPressed: (){
                 //heith= MediaQuery.of(context).size.height;
              },
              child: Text("Mostrar superheroe"),
              ),
              ElevatedButton(
              onPressed: (){
                  indexHeroList=Random().nextInt(6);
                  setState(() {});
              },
              child: Text("Siguiente"),
              ),
              ],
              ) 
              ],
              ),
      ),
            );
  }
}