class FetchAdmissionsQuery {
  FetchAdmissionsQuery({
    required this.id,
    required this.filter,
    required this.sort,
    required this.pageSize,
    required this.pageNumber,
    required this.filterByDoctors,
  });

  final int id;
  final String filter;
  final String sort;
  final int pageSize;
  final int pageNumber;
  final String filterByDoctors;
}
