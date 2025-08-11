import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'children_event.dart';
part 'children_state.dart';

class ChildrenBloc extends Bloc<ChildrenEvent, ChildrenState> {
  ChildrenBloc() : super(ChildrenInitial()) {
    on<ChildrenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
