import 'package:cre8/components/button.dart';
import 'package:cre8/components/textfield.dart';
import 'package:cre8/provider/scheduleprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateSchedule extends StatefulWidget {
  final Function(bool) onToggle;
  final bool isDark;
  const CreateSchedule({super.key, required this.onToggle, required this.isDark});

  @override
  State<CreateSchedule> createState() => _CreateScheduleState();
}

class _CreateScheduleState extends State<CreateSchedule> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  
  void _sunmit(){
    final scheduleProvider = Provider.of<ScheduleProvider>(context, listen: false);
    scheduleProvider.addShedule(
      titleController.text,
      subtitleController.text,
      descController.text,
    );
     titleController.clear();
     subtitleController.clear();
     descController.clear();

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Schedule Added')));
  }
  
  @override
  void dispose(){
    super.dispose();
    titleController.dispose();
    subtitleController.dispose();
    descController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule", style: TextStyle(fontSize: 20),),
        actions: [
          Switch(
            value: widget.isDark, 
            onChanged: widget.onToggle,
            activeColor: Colors.white,)
        ],
      ),
        
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create Schedule", style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 5,),
              Text("enter input to create a schedule"),
              SizedBox(height: 20,),
              InputField(text: "Title", controller: titleController, isSecured: false),
              SizedBox(height: 20,),
              InputField(text: "Subtitle", controller: subtitleController, isSecured: false),
              SizedBox(height: 20,),
              InputField(text: "Description", controller: descController, isSecured: false),
              SizedBox(height: 20,),
              Button(text: "Submit", 
              color: Colors.blue,
              onPressed: _sunmit),
             Button(
                text: "View All Schedule",
                color: Colors.white,
                onPressed: () {
                   Navigator.pushNamed(context, '/');
                },
              )

            ],
          ),
        )
         );
  }
}