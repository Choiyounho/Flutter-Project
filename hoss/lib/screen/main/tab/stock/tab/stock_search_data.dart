import 'package:get/get.dart';
import 'package:hoss/screen/main/tab/stock/tab/simple_stock.dart';

import '../../../../../common/common.dart';
import '../../../../../common/util/local_json.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<StockSearchData>();
}

class StockSearchData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> searchResult = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스']);
    () async {
      stocks.addAll(await LocalJson.getObjectList("json/stock_list.json"));
    }();
    super.onInit();
  }

  void search(String text) {
    if (text.isEmpty) {
      searchResult.clear();
      return;
    }
    searchResult.value =
        stocks.where((element) => element.name.contains(text)).toList();
  }

  void addSearchHistory(String stockName) {
    searchHistoryList.insert(0, stockName);
  }
}
