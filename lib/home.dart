import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          'assets/jenny.jpg',
                          fit: BoxFit.cover,
                          width: 500.0,
                        ),
                      ),
                      radius: 75.0),
                ),
                Divider(
                  height: 55.0,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Jenny M. Erilla',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month,
                    color: Colors.pinkAccent),
                    Text(
                      'YEAR',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '4th',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Icon(Icons.email,
                        color: Colors.pinkAccent),
                    Text(
                      'EMAIL',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'erillajenny16@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add Year'),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.pinkAccent)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
