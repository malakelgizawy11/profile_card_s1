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
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),

              const Text(
                "Profile Card",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.indigo[100],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 90,
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            profileItem(Icons.person, "Name", "Malak Mahmoud"),
                            profileItem(
                              Icons.work,
                              "Job Title",
                              "Flutter Developer",
                            ),
                            profileItem(Icons.cake, "Age", "21"),
                            profileItem(
                              Icons.location_on,
                              "Address",
                              "Cairo, Egypt",
                            ),
                            profileItem(Icons.school, "Graduated", "NO"),
                            profileItem(
                              Icons.email,
                              "Email",
                              "malak@gmail.com",
                            ),
                            profileItem(
                              Icons.phone,
                              "Phone Number",
                              "+201234567890",
                            ),

                            Row(
                              children: [
                                const Icon(
                                  Icons.link,
                                  color: Colors.blue,
                                  size: 25,
                                ),
                                const SizedBox(width: 25),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "LinkedIn",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "malak",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 15,
                                    ),
                                  ),
                                  child: const Text("Open"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String title, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue, size: 25),

        const SizedBox(width: 10),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                value,
                style: const TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
