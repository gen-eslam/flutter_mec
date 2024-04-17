import 'package:flutter/material.dart';

class MessagerScreen extends StatelessWidget {
  const MessagerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/1.jpg"),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.1)),
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.1)),
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SearchBar(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onTap: () {},
                hintText: "search",
                leading: const Icon(
                  Icons.search,
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 50,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                  "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                                ),
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Name")
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                          ),
                        ),
                        title: Text("Name"),
                        subtitle: Text("last message"),
                        trailing: Icon(
                          Icons.check_circle,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
