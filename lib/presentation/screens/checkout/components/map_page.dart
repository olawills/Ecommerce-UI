import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const LatLng sourceLocation = LatLng(37.335000926, -122.03272188);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: getProportionateScreenHeight(120),
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'View Map',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                ),
              ),
              GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: sourceLocation,
                  zoom: 14.5,
                ),
                markers: {
                  const Marker(
                    markerId: MarkerId("source"),
                    position: sourceLocation,
                  )
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
