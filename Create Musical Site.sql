CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_artists (
	artist_id INTEGER REFERENCES artists(id),
	genre_id INTEGER REFERENCES genres(id),
	CONSTRAINT gen_art_pk PRIMARY KEY (artist_id, genre_id) 
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR (100) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS artist_albums (
	artist_id INTEGER REFERENCES artists(id),
	album_id INTEGER REFERENCES albums(id),
	CONSTRAINT art_alb_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	album INTEGER REFERENCES albums(id),
	duration TIME
);

CREATE TABLE IF NOT EXISTS collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS collections_tracks (
	track_id INTEGER NOT NULL REFERENCES tracks(id),
	collection_id INTEGER NOT NULL REFERENCES collections(id),
	CONSTRAINT coll_tr_pk PRIMARY KEY (track_id, collection_id)
);