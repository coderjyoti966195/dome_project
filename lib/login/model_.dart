class PigeonUserDetails {
  final String name;
  final String email;
  final String uid;

  PigeonUserDetails({required this.name, required this.email, required this.uid});

  factory PigeonUserDetails.fromMap(Map<String, dynamic> map) {
    return PigeonUserDetails(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      uid: map['uid'] ?? '',
    );
  }
}
