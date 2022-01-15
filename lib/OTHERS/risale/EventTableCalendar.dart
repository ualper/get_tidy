//------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'addRisale.dart';

//------------------------------------------------------------
class EventTableCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Table Calendar",
      home: Calendar(),
    );
  }
}

//------------------------------------------------------------

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _sayfaController = TextEditingController();

  final kulliyat = ['United Kingdom', 'USA', 'France', 'Australia', 'New Zealand', 'Germany', 'Vietnam', 'India'];
  var _selectedIndex = -1;

  bodyContent() {
    return ListView.builder(
        itemCount: kulliyat.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              selected: _selectedIndex == index ? true : false,
              selectedTileColor: Colors.blue[100],
              title: Text(kulliyat[index]),
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          );
        });
  }

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _sayfaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OKUMA TAKVIMI"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
            locale: ('tr_TR'),
            focusedDay: selectedDay,
            firstDay: DateTime(2022),
            lastDay: DateTime(2023),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,

            //Day Changed
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
              print(focusedDay);
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },

            eventLoader: _getEventsfromDay,

            //To style the Calendar
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              selectedTextStyle: const TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                color: Colors.purpleAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              defaultDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              formatButtonTextStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ..._getEventsfromDay(selectedDay).map(
            (Event event) => ListTile(
              title: Text(
                event.title,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Okuma Ekle"),
                content: Center(
                  child: ListView(
                    children: const <Widget>[
                      Text("one"),
                      Text("two"),
                    ],
                  ),
                ),
                // content: Expanded(child: AddRisale()),
                actions: [
                  TextButton(
                    child: const Text("Iptal"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: const Text("Ekle"),
                    onPressed: () {
                      if (_sayfaController.text.isEmpty) {
                      } else {
                        if (selectedEvents[selectedDay] != null) {
                          selectedEvents[selectedDay]?.add(
                            Event(title: _sayfaController.text),
                          );
                        } else {
                          selectedEvents[selectedDay] = [Event(title: _sayfaController.text)];
                        }
                      }
                      Navigator.pop(context);
                      _sayfaController.clear();
                      setState(() {});
                      return;
                    },
                  ),
                ],
              ),
            ),
            label: const Text("Risale Ekle"),
            icon: const Icon(Icons.pages_sharp),
          ),
          const SizedBox(width: 5),
          FloatingActionButton.extended(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Okuma Ekle"),
                content: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: _sayfaController,
                ),
                actions: [
                  TextButton(
                    child: const Text("Iptal"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: const Text("Ekle"),
                    onPressed: () {
                      if (_sayfaController.text.isEmpty) {
                      } else {
                        if (selectedEvents[selectedDay] != null) {
                          selectedEvents[selectedDay]?.add(
                            Event(title: _sayfaController.text),
                          );
                        } else {
                          selectedEvents[selectedDay] = [Event(title: _sayfaController.text)];
                        }
                      }
                      Navigator.pop(context);
                      _sayfaController.clear();
                      setState(() {});
                      return;
                    },
                  ),
                ],
              ),
            ),
            label: const Text("Sayfa Ekle"),
            icon: const Icon(Icons.pages_sharp),
          ),
        ],
      ),
    );
  }
}

//------------------------------------------------------------
class Event {
  final String title;
  Event({required this.title});

  String toString() => this.title;
}
//------------------------------------------------------------

class ListItem<T> {
  bool isSelected = false; //Selection property to highlight or not
  T data; //Data of the user
  ListItem(this.data); //Constructor to assign the data
}
