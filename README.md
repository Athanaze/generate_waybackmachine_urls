# generate_waybackmachine_urls
Generates wayback machine urls for each day starting from 2010

```dart
  var date = DateTime(2010);
  var generatedString = "";
  var target = "cnn.com";
  while (DateTime.now().isAfter(date)) {
    generatedString +=
        "\"http://web.archive.org/web/${DateFormat("yyyyMMdd1200").format(date)}/$target\",\n";
    date = date.add(Duration(days: 1));
  }

  var file = await File('output.txt').writeAsString(generatedString);
  
  ```
