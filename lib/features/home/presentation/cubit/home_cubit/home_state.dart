part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class DrawerState extends HomeState {
  final bool state;

  const DrawerState({required this.state});

  @override
  List<Object> get props => [state];
}

class ToggleConnectButtonState extends HomeState {
  final bool isConnected;

  const ToggleConnectButtonState({required this.isConnected});

  @override
  List<Object> get props => [isConnected];
}

class LoadingConnectButtonState extends HomeState {
  final AnimationController? animationController;

  const LoadingConnectButtonState({this.animationController});
  @override
  List<Object?> get props => [animationController];
}

class WaveAnimationConnectButtonState extends HomeState {
  final AnimationController? animationController;

  const WaveAnimationConnectButtonState({this.animationController});
  @override
  List<Object?> get props => [animationController];
}

class DrawerPageState extends HomeState {
  final int page;

  const DrawerPageState({required this.page});
  @override
  List<Object?> get props => [page];
}

class PanelState extends HomeState {
  final double? size;
  final bool? isDraggable;

  const PanelState({this.size, this.isDraggable});
  @override
  List<Object?> get props => [size, isDraggable];
}

class SpeedometerState extends HomeState {
  final bool isSpeedometer;

  const SpeedometerState({required this.isSpeedometer});

  @override
  List<Object> get props => [isSpeedometer];
}

class GetServersSuccessState extends HomeState {}

class GetServersFailureState extends HomeState {}
