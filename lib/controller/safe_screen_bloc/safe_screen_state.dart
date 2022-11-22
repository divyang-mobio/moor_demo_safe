part of 'safe_screen_bloc.dart';

abstract class SafeScreenState {}

class SafeScreenInitial extends SafeScreenState {}

class SafeScreenWithData extends SafeScreenState {
  SafeTableData safeModel;

  SafeScreenWithData({required this.safeModel});
}

class SafeScreenWithOutData extends SafeScreenState {}
