
-- Tabelas já foram criadas
CREATE TABLE bands (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE songs (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    band_id TEXT NOT NULL,
    FOREIGN KEY (band_id) REFERENCES bands (id)
);

CREATE TABLE albums (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    band_id TEXT NOT NULL,
    FOREIGN KEY (band_id) REFERENCES bands (id)
);

CREATE TABLE albums_songs (
    album_id TEXT NOT NULL,
    song_id TEXT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums (id),
    FOREIGN KEY (song_id) REFERENCES songs (id)
);
