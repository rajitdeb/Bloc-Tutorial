/*
 * 1. Bloc will first trigger an event
 * 2. which will be passed to the Bloc Machine
 * 3. and it will change the State (here, CounterState)
 *
 * Flow Diagram:
 *
 * Main.dart -> counter_page.dart -> Button -> Event -> Bloc -> State -> counter_page.dart
 */
class CounterState {
  final int count;

  // if we want to make this count field as named argument (optional)
  // We can fo that in this way
  CounterState({required this.count});

  // Else
  // CounterState(this.count);
}
