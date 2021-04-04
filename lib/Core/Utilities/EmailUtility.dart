class EmailUtility {
  final String email;

  EmailUtility(String mail)
      : assert(mail != null),
        this.email = mail;

  bool verifyMail() {
    return this.email.contains("@");
  }
}
