import 'package:cre8/provider/scheduleprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';





class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the provider here (correct context usage)
    final scheduleProvider = Provider.of<ScheduleProvider>(context);

    return ListView.builder(
      itemCount: scheduleProvider.schedulemodel.length,
      itemBuilder: (context, index) {
        final item = scheduleProvider.schedulemodel[index];
        return ListTile(
          title: Text(item.title),
          subtitle: Text(item.subtitle),
          trailing: Row(
            children: [
              IconButton(
                icon: Icon(
                  item.isDone ? Icons.check_circle : Icons.circle_outlined,
                  color: item.isDone ? Colors.green : null,
                ),
                onPressed: () {
                  scheduleProvider.toggleSchedule(index);
                },
                      
              ),
               ElevatedButton.icon(
                icon: Icon(
                  Icons.delete,
                ),
                label: Text("delete"),
                onPressed: () {
                  scheduleProvider.toggleSchedule(index);
                },
                      
              ),
            ],
          ),
          onTap: () => Navigator.pushNamed(context, '/edit', arguments: item),
        );
      },
    );
  }
}

class AllSchedule extends StatefulWidget {
  const AllSchedule({super.key});

  @override
  State<AllSchedule> createState() => _AllScheduleState();
}

class _AllScheduleState extends State<AllSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Schedules")),
      body: const Display(),
    );
  }
}
