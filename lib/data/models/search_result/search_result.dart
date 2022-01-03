class SearchResult<T> {
  int total;
  int offset;
  int limit;
  List<T> values;

  SearchResult({
    this.total = 0,
    this.offset = 0,
    this.limit = 0,
    required this.values
  });
}