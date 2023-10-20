import 'package:flutter/material.dart';
import 'package:task_5/core/app_colors.dart';
import 'package:task_5/feature/search.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  List<Widget> screens = [const FirstScreen(), const search()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldbg,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Ahmed',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'Have a nice day,',
              style: TextStyle(color: Colors.white38, fontSize: 14),
            ),
          ],
        ),
        actions: const <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/Me.jpg'),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Container(
              height: 170,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: AppColors.tabbar,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TabBar(
              controller: _tabController,
              dividerHeight: 0,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Science',
                ),
                Tab(
                  text: 'Entertainment',
                ),
                Tab(
                  text: 'Sports',
                ),
                Tab(
                  text: 'Business',
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '    Recommended Articles',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(color: AppColors.tabbar),
                    child: ListTile(
                      leading: Image.asset('assets/image 1.png'),
                      title: const Text(
                        'Man city Stay perfect despite Rodri red againest forest',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(Icons.menu),
                          Text(
                            'Read',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 3),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
