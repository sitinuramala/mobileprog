import 'package:flutter/material.dart';
import 'manage_comments_page.dart';

class CommentsProvider with ChangeNotifier {
  List<String> _approvedComments = [];
  List<String> _pendingComments = [];

  List<String> get approvedComments => _approvedComments;
  List<String> get pendingComments => _pendingComments;

  void addComment(String comment) {
    _pendingComments.add(comment);
    notifyListeners();
  }

  void approveComment(String comment) {
    _approvedComments.add(comment);
    _pendingComments.remove(comment);
    notifyListeners();
  }

  void removeComment(String comment) {
    _pendingComments.remove(comment);
    notifyListeners();
  }
}
