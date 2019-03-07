import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main(){
  runApp(new  MaterialApp(),
   home : new HalamanDua (),
   routes : <String , WidgetBuilder>(){
     '/HalamanSatu' : (BuildContext context)=> Halaman Satu (),
     '/HalamanDua' : (BuildContext context)=> Halaman Dua (),
   },

  ));
   
}


class class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Container(
      color: Colors.red,
      child: new FlatButton(
        child: new test('Start'), onPressed: () {
          Navigator.pushNamed(context, '/HalamanSatau');
          
        });,
      ),
      
    );
  }
}

class class HalamanSatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => new _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState(){
    controller = new AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);

    animation = new Tween(begin: 0.0, end: 300).animate(controler)l;

    controller.forward();

    super.initState();
  }

  @override

  void dispose(){
    controller.dispose();
    super.dispose();
  }

@override

Widget build (BuildContext context){
  return new AnimasiLogo(animation : animation,);
}


class AnimasiLogo extends AnimatedWidget {
  AnimasiLogo ({Key key, Animation<double> animation})
  : super (key : Key , Listenable : animation);
  
  @override
  Widget build(BuildContext context) {
    return Animation<double> animation = Listenable;

    return new Center ( 
      child: new Container(
        height: animation.value,
        width: animation.value,
        child: 
        new Column(
          children: <Widget>[
            new Image(
              image: new NetworkImage(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6QaVBenx5nJae4rpw4zTZlVQr6GZwCuXGNfAR5-Kqfimt4DKK),
            )
          ],
        ),
      ),
    )      
    );
  }
}