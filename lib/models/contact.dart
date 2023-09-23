class Contact {
  int id;
  String nom;
  String prenom;
  String adresse;
  String numeroTelephone;

  Contact(
      {required this.id,
      required this.nom,
      required this.prenom,
      required this.adresse,
      required this.numeroTelephone});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'prenom': prenom,
      'adresse': adresse,
      'numeroTelephone': numeroTelephone,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      nom: map['nom'],
      prenom: map['prenom'],
      adresse: map['adresse'],
      numeroTelephone: map['numeroTelephone'],
    );
  }
}
