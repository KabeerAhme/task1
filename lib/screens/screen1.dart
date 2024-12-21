import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickupSchedule extends StatefulWidget {
  const PickupSchedule({super.key});

  @override
  State<PickupSchedule> createState() => _PickupScheduleState();
}

class _PickupScheduleState extends State<PickupSchedule> {
  String selectedCountry = "Pakistan";
  int count = 0;
  final List<Map<String, dynamic>> boxItems = [
    {"name": "DoyDoy (24 x 18 x 24)"},
    {"name": "PopBox (23 x 17 x 20)"},
    {"name": "Irregular (-)"},
    {"name": "Ali Box (17 x 7 x 7)"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Pickup Schedule',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Box & Items",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Fill out item information",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField(
              value: selectedCountry,
              decoration: InputDecoration(
                labelText: "Country",
                border: OutlineInputBorder(),
              ),
              items: [
                DropdownMenuItem(value: "Pakistan", child: Text("Pakistan")),
                DropdownMenuItem(value: "China", child: Text("China")),
                DropdownMenuItem(value: "Mexico", child: Text("Mexico")),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: boxItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(boxItems[index]["name"]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          Text(count.toString()),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.error, color: Colors.red),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Box should at least have 1 quantity of declaration item.",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Text("Item",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 1,
                    child: Text("Qty",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 1,
                    child: Text("Price",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 2,
                    child: Text("Condition",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          // child: Text(items[index]['name'] ?? ""),
                          child: Text("Hello"),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 8),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 8),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: DropdownButtonFormField<String>(
                            value: "New",
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 8),
                            ),
                            items: [
                              DropdownMenuItem(
                                  value: "New", child: Text("New")),
                              DropdownMenuItem(
                                  value: "Used", child: Text("Used")),
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue.withOpacity(0.4),
              ),
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
