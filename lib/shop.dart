import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Icon(Icons.menu)),
                      trailing: Icon(Icons.search),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                firstrow(),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    ListTile(
                      trailing: InkWell(
                          child: Text(
                        "View All",
                        style: TextStyle(fontSize: 7, color: Colors.grey),
                      )),
                      leading: Text(
                        "New Arrivals",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                NewArrivals(),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    ListTile(
                      trailing: InkWell(
                          child: Text(
                        "View All",
                        style: TextStyle(fontSize: 7, color: Colors.grey),
                      )),
                      leading: Text(
                        "Popular",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Popular(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

firstrow() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(
          height: 250,
          width: 450,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              child: Container(
                child: const Image(image: AssetImage("assets/image.png")),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        SizedBox(
          height: 250,
          width: 450,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const InkWell(
              child: Image(image: AssetImage("assets/70.png")),
            ),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
      ],
    ),
  );
}

NewArrivals() {
  // ignore: prefer_const_constructors
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: const Row(
      children: [
        Column(
          children: [
            Card(
              child: Image(image: AssetImage("assets/perfume.jpg")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Perfume"),
              subtitle: Text("150 USD"),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Card(
              child: Image(image: AssetImage("assets/bag.jpg")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Hand Bag"),
              subtitle: Text("250 USD"),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Card(
              child: Image(image: AssetImage("assets/watch.jpg")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Watch"),
              subtitle: Text("300 USD"),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Card(
              child: Image(image: AssetImage("assets/shoe.jpg")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Shoe"),
              subtitle: Text("750 USD"),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}

Popular() {
  return Center(
      child: Column(
    children: [
      SizedBox(
        height: 250,
        width: double.infinity,
        child: Card(
          color: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const ListTile(
            leading: Image(image: AssetImage("assets/shoe.jpg")),
            title: Text("Shoe"),
            subtitle: Text("Limited Stock"),
            trailing: Text(
              "750 USD",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 250,
        width: double.infinity,
        child: Card(
          color: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const ListTile(
            leading: Image(image: AssetImage("assets/bag.jpg")),
            title: Text("Hand Bag"),
            subtitle: Text("Limited Stock"),
            trailing: Text(
              "250 USD",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 250,
        width: double.infinity,
        child: Card(
          color: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const ListTile(
            leading: Image(image: AssetImage("assets/perfume.jpg")),
            title: Text("Perfume"),
            subtitle: Text("Limited Stock"),
            trailing: Text(
              "150 USD",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 250,
        width: double.infinity,
        child: Card(
          color: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const ListTile(
            leading: Image(image: AssetImage("assets/watch.jpg")),
            title: Text("Watch"),
            subtitle: Text("Limited Stock"),
            trailing: Text(
              "300 USD",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  ));
}
