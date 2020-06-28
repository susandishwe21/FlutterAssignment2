import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "John McDonald",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    buildWidget(Icons.location_on, "Los Angles, CA"),
                    const SizedBox(height: 30),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.green,
                      child: Text("Follow"),
                    ),
                  ],
                ),
                Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://dirphotos.up.edu/mcdonald.jpg')))),
              ],
            ),
            const SizedBox(height: 20),
           
           Row( 
                children: [
                  buildFollower("34", "Posts"),
                  buildFollower("1256", "Followers"),
                ],
              ),
            

            const SizedBox(height : 20),
            imageWidget(),
            iconWidget(),
            const SizedBox(height : 20),
              aboutWidget(),
          ],
        ),
      ),
    );
  }
}

Row buildWidget(IconData icon, String name) {
  return Row(
    children: [Icon(icon), Text(name)],
  );
}

Column buildFollower(String name, String like) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text(name), Text(like)],
  );
}

Row imageWidget(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.network('https://dirphotos.up.edu/mcdonald.jpg',width: 70,height: 70,),
    Image.network('https://dirphotos.up.edu/mcdonald.jpg',width: 70,height: 70),
    Image.network('https://dirphotos.up.edu/mcdonald.jpg',width: 70,height: 70),
    Image.network('https://dirphotos.up.edu/mcdonald.jpg',width: 70,height: 70),
  ],);
}

Row iconWidget(){
  return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.face),
      Icon(Icons.timer),
      Icon(Icons.toys),
      Icon(Icons.train)
  ],
  );
}

Column aboutWidget(){
  return Column(mainAxisAlignment: MainAxisAlignment.start ,
  children: [
    Text('About',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
      ),
      const SizedBox(height: 20),
      Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book."),
  ],
  );
}
