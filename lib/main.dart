import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}





















// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_api_with_retrofit/repository/model/data.dart';
// import 'package:flutter_api_with_retrofit/repository/retrofit/api_client.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
// // to set the root of app.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'API Demo Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("Flutter - Retrofit Implementation"),
//       ),
//       body: _buildBody(context),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {

//         },
//         label:Icon(Icons.cancel),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }

//   // build list view & manage states
//   FutureBuilder<ResponseData> _buildBody(BuildContext context) {
//     final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
//     return FutureBuilder<ResponseData>(
//       future: client.getUsers(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           final ResponseData posts = snapshot.data;
//           return _buildListView(context, posts);
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }

//   // build list view & its tile
//   Widget _buildListView(BuildContext context, ResponseData posts) {
//     return
//       ListView.builder(itemBuilder: (context,index){
//         return Card(
//           child: ListTile(
//             leading: Icon(Icons.account_box,color: Colors.green,size: 50,),
//             title: Text(posts.data[index]['name'],style: TextStyle(fontSize: 20),),
//             subtitle: Text(posts.data[index]['email']),
//           ),
//         );
//       },itemCount: posts.data.length,
//       );
//   }

// }
