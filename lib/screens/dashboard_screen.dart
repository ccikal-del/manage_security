import 'package:flutter/material.dart';
import 'route_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Securtiy Dashboard',
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hallo Security",
            style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 10),
            const Text('Selamat Bertugas hari ini',
            style: TextStyle(fontSize: 16,
            ),
            ),

            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.security,
                  color: Colors.lightGreen,
                ),
                title: const Text("Status",
                ),
                subtitle: const Text("Sedang Bertugas",
                ),
              ),
            ),

            const SizedBox(height:20),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                title: const Text("Mulai Keamanan",
                ),
                subtitle: const Text("Cek ruangan serta kondisi",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                onTap:() {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>RouteScreen()
                    )
                    );
                },
              ),
            ),

            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.assignment,
                ),
                title: const Text("Riwayat",
                ),
                subtitle: const Text("Lihat hasil lapaoran",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}