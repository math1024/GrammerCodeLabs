import 'dart:developer' as developer;

void main() {
  print('log');
  developer.log('log me', level: 1, name: 'my.app.category');

  developer.log('log me 1', name: 'my.other.category');
  developer.log('log me 2', name: 'my.other.category');
}
