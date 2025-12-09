import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ////الجزء الخاص بالappbar
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 66, 117),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit, color: Colors.white),
          ),
        ],
      ),
      ////الجزء الخاص بصورة الغلاف والصورة الشخصية
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDCcGuKYZpvhvbxQUfZTlU0M5pV7tSw-zUqg&s",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              ///الصورة الشخصية للمطور
              const Positioned(
                bottom: 20,
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      "https://scontent.fcai20-3.fna.fbcdn.net/v/t1.6435-9/75250956_2451406678519846_4023420806208946176_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGTBhzhMsguShEAGgiSFMtk3hOXSmD2Lg7eE5dKYPYuDptEA4TWszYG3_lT_biPtoK5u9TRMTIQS9JWKrmmvsD8&_nc_ohc=D3U3h-Z8RI8Q7kNvwFJ2AEW&_nc_oc=AdleAbeFZCegZRKpgkOyKrviCgUbMwuvlb-uXhDVQaRcbiTjlTCWtcaMlNkSnKJXQbg&_nc_zt=23&_nc_ht=scontent.fcai20-3.fna&_nc_gid=_l9E06P-0rvYDsjh0yj8jA&oh=00_Afl78oZRVeGkgvtZyxAHQqViv00XXtioXw25J1XzcIXYWQ&oe=695FCD4A",
                    ),
                  ),
                ),
              ),
            ],
          ),

          ///الجزء الخاص بالمطور ( الاسم والمطور ومكان الاقامه )
          const SizedBox(height: 50),
          const Text(
            "mohamed yousry",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            "Lead Developer",
            style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 4),
          const Text(
            "Cairo, Egypt",
            style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 20),

          ///الجزء الخاص بالايميل
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 158, 207, 241),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(Icons.email, color: Color.fromARGB(255, 9, 72, 122)),
                SizedBox(width: 30),
                Text("mohamedyousry1@gmail.com"),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 2,
            color: Color(0xFFE0E0E0),
            height: 30,
            indent: 20,
            endIndent: 20,
          ),

          ///الجزء الخاص بالاعدادات والاشعارات
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Account Settings"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
