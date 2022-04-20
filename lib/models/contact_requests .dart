class ContactRequests {
  late bool status;
  late String message;
  ContactRequests({
    required this.message,
    required this.status,
  });
  ContactRequests.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }
}
