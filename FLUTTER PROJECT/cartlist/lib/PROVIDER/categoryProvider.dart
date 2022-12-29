import 'package:cartlist/MODAL/categoryModal.dart';
import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  List<SampleResponse> _postList = [];

  List<SampleResponse> get postList => _postList;

  setPostList(List<SampleResponse> list) {
    _postList.addAll(list);
    notifyListeners();
  }

  mergePostList(List<SampleResponse> list) {
    _postList = list;
    notifyListeners();
  }

  SampleResponse getPostByIndex(int index) => _postList[index];
}
