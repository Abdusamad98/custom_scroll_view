import 'package:flutter/material.dart';

class UserItemView extends StatelessWidget {
  const UserItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network("https://i0.wp.com/ddrg.farmasi.unej.ac.id/wp-content/uploads/sites/6/2017/10/unknown-person-icon-Image-from.png",fit: BoxFit.cover,),
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Falonchi Aka",style: TextStyle(fontSize: 14),),
              Text("last seen 14:25",style: TextStyle(fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
}
