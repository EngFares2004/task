import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_list_tiled.dart';
import 'package:intl/intl.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM yyyy').format(DateTime.now());

    return Scaffold(
       backgroundColor: Color(0xffFEFCFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              ListTile(
                title: const Text(
                  'Welcome 👌',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff061624
                    )
                  ),
                ),
                subtitle: const Text(
                  'Follow up on your students in the nursery with ease',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff8B97A3
                    )
                  ),
                ),
                trailing:  ClipRRect(
                  borderRadius: BorderRadius.circular(25),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent, width: 1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.blueAccent),
            ),
          ),
        ),

      ),
              const SizedBox(height: 24),
           Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text(
                   'Monthly statistics 📈',
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Color(0xff061624
                       )
                   ),
                 ),
                 const Spacer(),
                 const SizedBox(width: 8), // Add some spacing between the icon and the text
                 Text(
                   formattedDate,
                   style: const TextStyle(
                     color: Color(0xff8344AD),
                     fontSize: 16,
                   ),
                 ),
                 const Icon(
                   Icons.calendar_today,
                   color: Color(0xff8344AD
                   ),
                 ),
               ],
             ),
              const SizedBox(height: 24),
              Row(

                children: [
                  Expanded(child: CustomListTiled(title:"Children" ,subtitle: "356",icon: Icons.person_outlined,)),
                  Expanded(child: CustomListTiled(title:"Classes" ,subtitle: "200",icon: Icons.class_outlined,)),
                ],
              ),
              Row(

                children: [
                  Expanded(child: CustomListTiled(title:"Holidays" ,subtitle: "5",icon: Icons.calendar_today,)),
                  Expanded(child: CustomListTiled(title:"Permissions" ,subtitle: "20",icon: Icons.timer,)),
                ],
              ),
          const SizedBox(height: 24),
          const Text(
            'Nursery posts 👀',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff061624
                )
            )),
              const SizedBox(height: 24),

              CustomListTiled(
                title:"Life Kindergarten" ,
                subtitle: "Today, 3 minutes ago",
               profileImage: "https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1472043880/ws1lqfvy5kp7hjih1tqx.jpg",
                desc: "Today we celebrated the new generations at Life Nursery and wish you a happy new year! 💖",
                image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEVveygx9Z-3UYUsHBi3dB-HSLsven2wRVtzwBnv9rZnoFxh0qfr6iqFluO4sq4vwpSTs&usqp=CAU",
              ),
              const SizedBox(height: 24),

              CustomListTiled(
                title:"Life Kindergarten" ,
                subtitle: "Today, 3 minutes ago",
               profileImage: "https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1472043880/ws1lqfvy5kp7hjih1tqx.jpg",
                desc: "Today we celebrated the new generations at Life Nursery and wish you a happy new year! 💖",
                image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6Leh_rvEZxaqdzuQkaiBkh-zIkZKrSymhLGOFidzalECkhdh840cuHSt8LqIGhMYgVRY&usqp=CAU",
              ),
              const SizedBox(height: 24),

              CustomListTiled(
                title:"Bright future" ,
                subtitle: "Today, 3 minutes ago",
               profileImage: "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp",
                desc: "Today we celebrated the new generations at Life Nursery and wish you a happy new year! 💖",
              ),
              const SizedBox(height: 24),

            ],
          ),
        ),
      ),
    );
  }
}
