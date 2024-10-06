import 'package:flutter/material.dart';

class CustomListTiled extends StatelessWidget{
  final IconData? icon ;
  final String title;
  final String? desc;
  final String? image;
  final String? profileImage;
  final String subtitle;
  const CustomListTiled({super.key,
    this.icon,
    required this.title,
    required this.subtitle,
    this.desc,
    this.image,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white ,
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              clipBehavior: Clip.antiAlias,
              child: Container(
                padding: EdgeInsets.all(8), // Add some padding inside the container
                decoration: BoxDecoration(
                  color: Color(0xffe0f7fa), // Background color
                ),

                child: profileImage != null
                    ? Image.network(
                  profileImage!,
                  fit: BoxFit.cover,
                )
                    : Icon(
                  icon,
                  color: Colors.blue,

                ),
              ),

            ),
            title:Text(
              title,
              style: TextStyle(
                  fontSize:desc == null&&image == null? 12:17,
                  color:desc == null&&image == null?  Color(0xff8B97A3): Color(0xff061624)
              ),
            ),
            subtitle:Text(
              subtitle,
              style: TextStyle(
                  fontSize: 12,
                  color:desc == null&&image == null?  Color(0xff8344AD): Color(0xff8B97A3)
              ),
            ),
            trailing:    desc == null&&image == null? Icon(Icons.arrow_forward_ios,color: Color(0xff8B97A3),size: 10,):null,
          ),
          if(desc != null) Padding(
            padding: EdgeInsets.all( 17),
            child: Text('$desc' ,style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff061624)
            ),),
          ),
          if(image != null)Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.width/2.8,
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
            child: Image.network(image! ,  fit: BoxFit.fill,),
          )
        ],
      ),

    );
  }

}