class DataProcessor {
  List<int> data;
  int pengali;

  DataProcessor(this.data, this.pengali);

  Future<List<int>> processAsync() async {
    List<int> hasil = [];

    for (int item in data) {
      int result = await _multiplyAsync(item);
      hasil.add(result);
    }

    return hasil;
  }

  Future<int> _multiplyAsync(int value) async {
    await Future.delayed(Duration(seconds: 1));
    return value * pengali;
  }
}

void main() async {
  List<int> dataList = [1, 2, 3, 4, 5];
  int pengali = 2;

  DataProcessor processor = DataProcessor(dataList, pengali);

  List<int> hasil = await processor.processAsync();

  print("Hasil proses async: $hasil");
}
