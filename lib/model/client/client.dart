class Client {
  final String clientId;
  final String addressCountry;
  final String firstName;
  final String secondName;
  final String companyName;
  final String addressStreet;
  final String addressZip;
  final String addressCity;

  Client({
    required this.clientId,
    required this.firstName,
    required this.secondName,
    required this.companyName,
    required this.addressStreet,
    required this.addressZip,
    required this.addressCity,
    required this.addressCountry,
  });
}
