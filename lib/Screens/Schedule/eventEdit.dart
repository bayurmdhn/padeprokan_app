import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'addEvent.dart ';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:provider/provider.dart';

String toDate(DateTime dateTime) {
  final date = DateFormat.yMMMEd().format(dateTime);

  return '$date';
}

class eventEdit extends StatefulWidget {
  final addEvent? event;

  const eventEdit({Key? key, this.event}) : super(key: key);

  @override
  State<eventEdit> createState() => _eventEditState();
}

class _eventEditState extends State<eventEdit> {
  final _formkey = GlobalKey<FormState>();
  final titleController = TextEditingController();

  late DateTime fromDate;
  late DateTime toDate;

  @override
  void initState() {
    super.initState();
    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(Duration(hours: 2));
    }
  }

  @override
  void dispose() {
    titleController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Event title",
                            style: TextStyle(
                                color: Color.fromARGB(255, 153, 153, 153),
                                fontSize: 12),
                            children: [
                          TextSpan(
                              text: "*",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 19, 19)))
                        ])),
                  ],
                ),
                TextFormField(
                  style: TextStyle(fontSize: 10),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 140, 79, 225))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 140, 79, 225))),
                      hintText: 'Insert title here',
                      hintStyle: TextStyle(fontSize: 10)),
                  onFieldSubmitted: (_) {},
                  validator: (title) => title != null && title.isEmpty
                      ? 'Title cannot be empty'
                      : null,
                  controller: titleController,
                ),
                // buildTitle(),
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Time Start",
                            style: TextStyle(
                                color: Color.fromARGB(255, 153, 153, 153),
                                fontSize: 12),
                            children: [
                          TextSpan(
                              text: "*",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 19, 19)))
                        ])),
                  ],
                ),
                buildDateTimePickers()
              ],
            ),
          ),
        ),
      );

  Widget buildDateTimePickers() => Column(
        children: [buildFrom()],
      );

  Widget buildFrom() => Row(
        children: [
          Expanded(
            child:
                buildDropdownField(text: toDate.toString(), onClicked: () {}),
          )
        ],
      );

  Widget buildDropdownField({
    required String text,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );
}
