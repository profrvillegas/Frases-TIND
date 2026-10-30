class Frase {
  final int? id; // null cuando la frase aún no se ha guardado
  final String frase;
  final String autor;
  const Frase({this.id, required this.frase, required this.autor});

  // Objeto -> Map (para guardar en SQLite
  Map<String, Object?> toMap() {
    return {if (id != null) 'id': id, 'frase': frase, 'autor': autor};
  }

  /// Mapa (una fila de SQLite) -> objeto.
  factory Frase.fromMap(Map<String, Object?> mapa) {
    return Frase(
      id: mapa['id'] as int?,
      frase: mapa['frase'] as String,
      autor: mapa['autor'] as String,
    );
  }
}
