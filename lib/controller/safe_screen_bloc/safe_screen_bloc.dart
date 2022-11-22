import 'package:bloc/bloc.dart';

import '../../utils/drift_database.dart';

part 'safe_screen_event.dart';

part 'safe_screen_state.dart';

class SafeScreenBloc extends Bloc<SafeScreenEvent, SafeScreenState> {
  MyDatabase database;

  SafeScreenBloc({required this.database}) : super(SafeScreenInitial()) {
    on<IsDataIsThere>((event, emit) async {
      List<SafeTableData> data = await database.getData();
      if (data.isNotEmpty) {
        print("have Data");
        emit(SafeScreenWithData(safeModel: data[0]));
      } else {
        print("have no Data");
        emit(SafeScreenWithOutData());
      }
    });
  }
}
