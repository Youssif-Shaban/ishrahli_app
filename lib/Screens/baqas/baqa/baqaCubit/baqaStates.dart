abstract class BaqaStates {}

class BaqaInitialState extends BaqaStates {}

class BaqaLoadingState extends BaqaStates {}

class BaqaSucccessState extends BaqaStates {}

class BaqaErrorState extends BaqaStates {
  final String error;
  BaqaErrorState(this.error);
}
