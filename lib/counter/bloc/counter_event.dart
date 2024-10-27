/*
 * CounterEvent is the actual event that will act as the blueprint
 * for different types of events that trigger in the counter_page.dart
 *
 * Since the events could be of different types and might also have different
 * arguments, so we have used abstract class to accommodate all such requirements
 *
 */
abstract class CounterEvent {}

// All three different types of events
class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterResetPressed extends CounterEvent {}
