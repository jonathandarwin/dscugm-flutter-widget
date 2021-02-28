import 'package:flutter/material.dart';

void main() {
  // function yang bakal pertama kali dijalanin - entry point
  // runApp(widget);
  runApp(MainPage());
}


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // untuk render/create widget nya
    return MaterialApp( // widget paling root -> Material Design Google
      home: SafeArea( // konten widget itu berada dibawah notif bar
        child: Scaffold( // widget untuk support material design
          body: MyButton(),
        ),
      ),
    );
  }
}


// Widget Text
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello World', style: TextStyle(
        color: Colors.red,
        fontStyle: FontStyle.italic,
        fontSize: 20.0
      ),
    );
  }
}

// Widget Button
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () {
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Clicked!'))
      );
    }, 
    child: Text('Click Me'));
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Please input username'
          ),
        ),
      ),
    );
  }
}

// Center
class MyCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyImage(),
    );
  }
}

// Image
class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://i.pinimg.com/originals/50/e1/db/50e1db4684e6f697f93590950eb832f6.png'
    );
  }
}

// Column
class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column( // bisa menerima banyak widget yang ditampilkan secara vertical
      children: [
        MyText(),
        MyButton(),
        MyTextField()
      ],
    );
  }
}


class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
          return ListTile(
            title: Text("Title $index"),
            subtitle: Text("Subtitle $index"),
          );
        }
      );
  }
}

