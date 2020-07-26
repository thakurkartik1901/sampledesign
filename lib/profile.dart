import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/update-profile';
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        children: [
          Container(
            color: Colors.grey[200],
            height: 230,
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.transparent,
                  radius: 60.0,
                  child: ClipOval(
                    child: Image.network(
                      'https://i.pinimg.com/originals/af/0c/1f/af0c1f1c4dcca02d529c20a8217e2215.jpg',
                      fit: BoxFit.cover,
                      width: 120.0,
                      height: 120.0,
                    ),
                  ),
                ),
                Text(
                  'Amit Desai',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 13,
                    ),
                    Text(
                      'Sector,-21,Noida',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Covid Questionnaire',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'Have you or anyone you are close with been in contact with',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[900],
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Anyone that has been diagnosed with or is being monitored by the CDC for the COVID-19 inthe last 30 days?',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 16,
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'YES',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.indigo[900]),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.indigo[900],
                        onPressed: () {},
                        child: Text(
                          'NO',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Travelled out of the country in the last 30-40 days? Anyone that has been diagnosed with or is being monitored by the CDC for the COVID-19 inthe last 30 days?',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
