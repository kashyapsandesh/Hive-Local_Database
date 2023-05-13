import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var titleController = TextEditingController();
  var taskController = TextEditingController();
  showformModel(context, int? key) async {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: ((context) => Padding(
            padding: EdgeInsets.fromLTRB(
                12, 12, 12, MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(hintText: "Enter title "),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: taskController,
                  decoration: InputDecoration(hintText: "Enter task "),
                ),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: Text("Add Task")),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showformModel(context, null);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Hive CRUD operations"),
      ),
      body: Container(),
    );
  }
}
