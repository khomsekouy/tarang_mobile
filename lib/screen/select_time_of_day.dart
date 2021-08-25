import 'package:time_range_picker/time_range_picker.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Reng'),
      ),
      body: ListView(children: [
        ElevatedButton(
          onPressed: () async {
            TimeRange result = await showTimeRangePicker(
              context: context,
            );

            print("result " + result.toString());
          },
          child: Text("Pure"),
        ),
        ElevatedButton(
          onPressed: () {
            showTimeRangePicker(
              context: context,
              start: TimeOfDay(hour: 22, minute: 9),
              onStartChange: (start) {
                print("start time " + start.toString());
              },
              onEndChange: (end) {
                print("end time " + end.toString());
              },
              interval: Duration(minutes: 30),
              use24HourFormat: false,
              padding: 30,
              strokeWidth: 20,
              handlerRadius: 14,
              strokeColor: Colors.orange,
              handlerColor: Colors.orange[700],
              selectedColor: Colors.amber,
              backgroundColor: Colors.black.withOpacity(0.3),
              ticks: 12,
              ticksColor: Colors.white,
              snap: true,
              labels: [
                "12 pm",
                "3 am",
                "6 am",
                "9 am",
                "12 am",
                "3 pm",
                "6 pm",
                "9 pm"
              ].asMap().entries.map((e) {
                return ClockLabel.fromIndex(
                    idx: e.key, length: 8, text: e.value);
              }).toList(),
              labelOffset: -30,
              labelStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
              timeTextStyle: TextStyle(
                  color: Colors.orange[700],
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              activeTimeTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            );
          },
          child: Text("Interval"),
        ),
        ElevatedButton(
          onPressed: () async {
            TimeRange result = await showTimeRangePicker(
                context: context,
                start: TimeOfDay(hour: 9, minute: 0),
                end: TimeOfDay(hour: 12, minute: 0),
                disabledTime: TimeRange(
                    startTime: TimeOfDay(hour: 22, minute: 0),
                    endTime: TimeOfDay(hour: 5, minute: 0)),
                disabledColor: Colors.red.withOpacity(0.5),
                strokeWidth: 4,
                ticks: 24,
                ticksOffset: -7,
                ticksLength: 15,
                ticksColor: Colors.grey,
                labels: [
                  "12 pm",
                  "3 am",
                  "6 am",
                  "9 am",
                  "12 am",
                  "3 pm",
                  "6 pm",
                  "9 pm"
                ].asMap().entries.map((e) {
                  return ClockLabel.fromIndex(
                      idx: e.key, length: 8, text: e.value);
                }).toList(),
                labelOffset: 35,
                rotateLabels: false,
                padding: 60);

            print("result " + result.toString());
          },
          child: Text("Disabled Times"),
        ),
        ElevatedButton(
          onPressed: () async {
            TimeRange result = await showTimeRangePicker(
              context: context,
              paintingStyle: PaintingStyle.fill,
              backgroundColor: Colors.grey.withOpacity(0.2),
              labels: [
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 7, minute: 0), text: "Start Work"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 18, minute: 0), text: "Go Home")
              ],
              start: TimeOfDay(hour: 10, minute: 0),
              end: TimeOfDay(hour: 13, minute: 0),
              ticks: 8,
              strokeColor: Theme.of(context).primaryColor.withOpacity(0.5),
              ticksColor: Theme.of(context).primaryColor,
              labelOffset: 15,
              padding: 60,
              disabledTime: TimeRange(
                  startTime: TimeOfDay(hour: 18, minute: 0),
                  endTime: TimeOfDay(hour: 7, minute: 0)),
              disabledColor: Colors.red.withOpacity(0.5),
            );

            print("result " + result.toString());
          },
          child: Text("Filled Style"),
        ),
        ElevatedButton(
          onPressed: () async {
            TimeRange result = await showTimeRangePicker(
              context: context,
              strokeColor: Colors.teal,
              handlerColor: Colors.teal[200],
              selectedColor: Colors.tealAccent,
              strokeWidth: 16,
              handlerRadius: 18,
              backgroundWidget: Image.asset(
                "assets/images/day-night.png",
                height: 200,
                width: 200,
              ),
              labels: [
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 6, minute: 0), text: "Get up"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 9, minute: 0), text: "Coffee time"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 15, minute: 0), text: "Afternoon"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 18, minute: 0),
                    text: "Time for a beer"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 22, minute: 0), text: "Go to Sleep"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 2, minute: 0), text: "Go for a pee"),
                ClockLabel.fromTime(
                    time: TimeOfDay(hour: 12, minute: 0), text: "Lunchtime!")
              ],
              ticksColor: Colors.black,
              labelOffset: 40,
              padding: 55,
              labelStyle: TextStyle(fontSize: 18, color: Colors.black),
            );

            print("result " + result.toString());
          },
          child: Text("Background Widget"),
        ),
        ElevatedButton(
          onPressed: () async {
            TimeRange result = await showTimeRangePicker(
              context: context,
              strokeWidth: 4,
              ticks: 12,
              ticksOffset: 2,
              ticksLength: 8,
              handlerRadius: 8,
              ticksColor: Colors.grey,
              rotateLabels: false,
              labels: [
                "24 h",
                "3 h",
                "6 h",
                "9 h",
                "12 h",
                "15 h",
                "18 h",
                "21 h"
              ].asMap().entries.map((e) {
                return ClockLabel.fromIndex(
                    idx: e.key, length: 8, text: e.value);
              }).toList(),
              labelOffset: 30,
              padding: 55,
              labelStyle: TextStyle(fontSize: 18, color: Colors.black),
              start: TimeOfDay(hour: 12, minute: 0),
              end: TimeOfDay(hour: 15, minute: 0),
              disabledTime: TimeRange(
                  startTime: TimeOfDay(hour: 6, minute: 0),
                  endTime: TimeOfDay(hour: 10, minute: 0)),
              clockRotation: 180.0,
            );

            print("result " + result.toString());
          },
          child: Text("Rotated Clock"),
        ),
        ElevatedButton(
          onPressed: () async {
            TimeRange result = await showTimeRangePicker(
              context: context,
              rotateLabels: false,
              ticks: 12,
              ticksColor: Colors.grey,
              ticksOffset: -12,
              labels: [
                "24 h",
                "3 h",
                "6 h",
                "9 h",
                "12 h",
                "15 h",
                "18 h",
                "21 h"
              ].asMap().entries.map((e) {
                return ClockLabel.fromIndex(
                    idx: e.key, length: 8, text: e.value);
              }).toList(),
              labelOffset: -30,
              padding: 55,
              start: TimeOfDay(hour: 12, minute: 0),
              end: TimeOfDay(hour: 18, minute: 0),
              disabledTime: TimeRange(
                  startTime: TimeOfDay(hour: 4, minute: 0),
                  endTime: TimeOfDay(hour: 10, minute: 0)),
              maxDuration: Duration(hours: 4),
            );

            print("result " + result.toString());
          },
          child: Text("Max duration"),
        ),
        Divider(),
        Text(
          'As a regular widget:',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 400,
          child: TimeRangePicker(
            hideButtons: true,
            hideTimes: true,
            paintingStyle: PaintingStyle.fill,
            backgroundColor: Colors.grey.withOpacity(0.2),
            labels: [
              ClockLabel.fromTime(
                  time: TimeOfDay(hour: 7, minute: 0), text: "Start Work"),
              ClockLabel.fromTime(
                  time: TimeOfDay(hour: 18, minute: 0), text: "Go Home")
            ],
            start: TimeOfDay(hour: 10, minute: 0),
            end: TimeOfDay(hour: 13, minute: 0),
            ticks: 8,
            strokeColor: Theme.of(context).primaryColor.withOpacity(0.5),
            ticksColor: Theme.of(context).primaryColor,
            labelOffset: 15,
            padding: 60,
            disabledTime: TimeRange(
                startTime: TimeOfDay(hour: 18, minute: 0),
                endTime: TimeOfDay(hour: 7, minute: 0)),
            disabledColor: Colors.red.withOpacity(0.5),
          ),
        ),
      ]),
    );
  }
}
