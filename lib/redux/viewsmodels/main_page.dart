import 'package:equatable/equatable.dart';
import 'package:fusecash/models/app_state.dart';
import 'package:fusecash/redux/actions/swap_actions.dart';
import 'package:fusecash/redux/actions/user_actions.dart';
import 'package:redux/redux.dart';

class HomeScreenViewModel extends Equatable {
  final bool isContactsSynced;
  final bool backup;
  final bool isBackupDialogShowed;
  final Function setShowDialog;
  final Function getSwapList;

  HomeScreenViewModel({
    this.isContactsSynced,
    this.backup,
    this.isBackupDialogShowed,
    this.setShowDialog,
    this.getSwapList,
  });

  static HomeScreenViewModel fromStore(Store<AppState> store) {
    return HomeScreenViewModel(
      isContactsSynced: store.state.userState.isContactsSynced,
      backup: store.state.userState.backup,
      isBackupDialogShowed:
          store.state.userState?.receiveBackupDialogShowed ?? false,
      setShowDialog: () {
        store.dispatch(ReceiveBackupDialogShowed());
      },
      getSwapList: () {
        store.dispatch(ResetTokenList());
        store.dispatch(fetchSwapList());
      },
    );
  }

  @override
  List<Object> get props => [
        isContactsSynced,
        backup,
        isContactsSynced,
      ];
}
