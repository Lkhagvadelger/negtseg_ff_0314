import '/components/search_bar_friend/search_bar_friend_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'friends_widget.dart' show FriendsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FriendsModel extends FlutterFlowModel<FriendsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBarFriend component.
  late SearchBarFriendModel searchBarFriendModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchBarFriendModel = createModel(context, () => SearchBarFriendModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFriendModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
