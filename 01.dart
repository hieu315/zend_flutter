import 'dart:math';

void main(List<String> args) {
  List<Map<String, String>> arr = [
    {'name' : 'thứ 2'},
    {'name' : 'thứ 3'},
    {'name' : 'thứ 4'},
    {'name' : 'thứ 5'},
    ];
    final data = arr..removeWhere((element) => element['name'] != 'thứ 2'&&  element['name'] != 'thứ 3');
    print(data);
}