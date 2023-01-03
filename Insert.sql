ALTER TABLE albums DROP COLUMN year;
ALTER TABLE collections  DROP COLUMN year;
alter table albums ADD COLUMN year INTEGER;
alter table collections  ADD COLUMN year INTEGER;

INSERT INTO genres (name)
VALUES ('Блюз-Рок'), ('Рок-н-ролл'), ('Ритм-н-блюз'), ('Психоделический рок'), ('Кантри'), ('Арт-рок'), 
('Глэм-рок'), ('Альтернативный рок'), ('Соул'), ('Хард-рок'), ('Хеви-метал'), ('Фолк-рок'), ('Прогрессивный рок'), 
('Индастриал-рок'), ('Индастриал-метал'), ('Дарк-эмбиент'), ('Ню-метал'), ('Готик-рок'), ('Шок-рок');

INSERT INTO artists (name)
VALUES ('The Rolling Stones'), ('David Bowie'), ('The Doors'), ('Led Zeppelin'), ('Pink Floyd'), ('Marilyn Manson'),
('Nine Inch Nails'), ('The Who'), ('Kiss');

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres 
WHERE genres.name IN ('Психоделический рок', 'Блюз-Рок', 'Ритм-н-блюз', 'Рок-н-ролл', 'Кантри') AND artists.name = 'The Rolling Stones';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Психоделический рок', 'Блюз-Рок') AND artists.name = 'The Doors';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Арт-рок', 'Глэм-рок', 'Альтернативный рок', 'Соул', 'Хард-рок') AND artists.name = 'David Bowie';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Хард-рок', 'Хеви-метал', 'Фолк-рок', 'Блюз-Рок') AND artists.name = 'Led Zeppelin';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Прогрессивный рок', 'Арт-рок', 'Психоделический рок') AND artists.name = 'Pink Floyd';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Индастриал-рок', 'Индастриал-метал', 'Ню-метал', 'Готик-рок', 'Шок-рок') AND artists.name = 'Marilyn Manson';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Индастриал-рок', 'Индастриал-метал', 'Альтернативный рок', 'Дарк-эмбиент') AND artists.name = 'Nine Inch Nails';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Хард-рок', 'Арт-рок') AND artists.name = 'The Who';

INSERT INTO genres_artists 
SELECT artists.id, genres.id FROM artists, genres
WHERE genres.name IN ('Хард-рок', 'Глэм-рок', 'Шок-рок', 'Хеви-метал') AND artists.name = 'Kiss';

INSERT INTO albums (name, year)
VALUES ('Some Girls', 1978), ('A Bigger Bang', 2005), ('Tattoo You', 1981), ('Sticky Fingers', 1971), ('Diamond Dogs', 1974), ('Space Oditty', 1969), 
('Station to Station', 1976), ('Young Americans', 1975), ('The Doors', 1967), ('Morrison Hotel', 1970), ('Strange Days', 1967), ('Led Zeppelin III', 1970), 
('Led Zeppelin', 1969), ('Physical Graffiti', 1975), ('The Dark Side Of The Moon', 1973), ('Animals', 1977), ('The Wall', 1979), ('The Division Bell', 1994),
('Holy Wood', 2000), ('Mechanical Animals', 1998), ('The Golden Age Of Grotesque', 2003), ('Antichrist Superstar', 1996), ('Bad Witch', 2018), 
('Add Violence', 2017), ('My Generation', 1965), ('The Who Sell Out', 1967), ('Who''s Next', 1971), ('Who Are You', 1978), ('WE ARE CHAOS', 2020);

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('Some Girls', 'A Bigger Bang', 'Tattoo You', 'Sticky Fingers') and artists.name = 'The Rolling Stones';

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('Diamond Dogs', 'Space Oditty', 'Station to Station', 'Young Americans') and artists.name = 'David Bowie'; 

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('The Doors', 'Morrison Hotel', 'Strange Days') and artists.name = 'The Doors'; 

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('Led Zeppelin III', 'Led Zeppelin', 'Physical Graffiti') and artists.name = 'Led Zeppelin'; 

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('The Dark Side Of The Moon', 'Animals', 'The Wall', 'The Division Bell') and artists.name = 'Pink Floyd'; 

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('Holy Wood', 'Mechanical Animals', 'The Golden Age Of Grotesque', 'Antichrist Superstar', 'WE ARE CHAOS') and artists.name = 'Marilyn Manson'; 

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('Bad Witch', 'Add Violence') and artists.name = 'Nine Inch Nails'; 

insert into artist_albums
select artists.id, albums.id from artists, albums
where albums.name in ('My Generation', 'The Who Sell Out', 'Who''s Next', 'Who Are You') and artists.name = 'The Who'; 

INSERT INTO tracks (name, duration, album)
VALUES ('Miss You', '00:04:48', (select id FROM albums 
WHERE albums.name = 'Some Girls')),
('Rain Fall Down', '00:04:53', (select id FROM albums 
WHERE albums.name = 'A Bigger Bang')),
('Start Me Up', '00:03:34', (select id FROM albums 
WHERE albums.name = 'Tattoo You')),
('Brown Sugar', '00:03:50', (select id FROM albums 
WHERE albums.name = 'Sticky Fingers')),
('Streets Of Love', '00:05:09', (select id FROM albums 
WHERE albums.name = 'A Bigger Bang')),
('Diamond Dogs', '00:05:46', (select id FROM albums 
WHERE albums.name = 'Diamond Dogs')),
('Space Oditty', '00:05:29', (select id FROM albums 
WHERE albums.name = 'Space Oditty')),
('Station to Station', '00:11:33', (select id FROM albums 
WHERE albums.name = 'Station to Station')),
('Fame', '00:04:24', (select id FROM albums 
WHERE albums.name = 'Young Americans')),
('Right', '00:04:22', (select id FROM albums 
WHERE albums.name = 'Young Americans')),
('Break on Through (To the Other Side)', '00:02:28', (select id FROM albums 
WHERE albums.name = 'The Doors')),
('Back Door Man', '00:03:34', (select id FROM albums 
WHERE albums.name = 'The Doors')),
('The End', '00:11:41', (select id FROM albums 
WHERE albums.name = 'The Doors')),
('Roadhouse Blues', '00:04:04', (select id FROM albums 
WHERE albums.name = 'Morrison Hotel')),
('My Eyes Have Seen You', '00:02:31', (select id FROM albums 
WHERE albums.name = 'Strange Days')),
('Immigrant Song', '00:02:27', (select id FROM albums 
WHERE albums.name = 'Led Zeppelin III')),
('Babe I''m Gonna Leave You', '00:06:42', (select id FROM albums 
WHERE albums.name = 'Led Zeppelin')),
('Tangerine', '00:03:11', (select id FROM albums 
WHERE albums.name = 'Led Zeppelin III')),
('Friends', '00:03:43', (select id FROM albums 
WHERE albums.name = 'Led Zeppelin III')),
('Your Time Is Gonna Come', '00:04:34', (select id FROM albums 
WHERE albums.name = 'Led Zeppelin')),
('Kashmir', '00:08:37', (select id FROM albums 
WHERE albums.name = 'Physical Graffiti')),
('Money', '00:06:29', (select id FROM albums 
WHERE albums.name = 'The Dark Side Of The Moon')),
('Sheep', '00:10:25', (select id FROM albums 
WHERE albums.name = 'Animals')),
('Time', '00:06:48', (select id FROM albums 
WHERE albums.name = 'The Dark Side Of The Moon')),
('Comfortably Numb', '00:06:53', (select id FROM albums 
WHERE albums.name = 'The Wall')),
('High Hopes', '00:06:59', (select id FROM albums 
WHERE albums.name = 'The Division Bell')),
('Keep Talking', '00:05:57', (select id FROM albums 
WHERE albums.name = 'The Division Bell')),
('Dogs', '00:17:05', (select id FROM albums 
WHERE albums.name = 'Animals')),
('Pigs (Three Different Ones)', '00:11:25', (select id FROM albums 
WHERE albums.name = 'Animals')),
('The Love Song', '00:03:16', (select id FROM albums 
WHERE albums.name = 'Holy Wood')),
('The Dope Show', '00:03:40', (select id FROM albums 
WHERE albums.name = 'Mechanical Animals')),
('This Is the New Shit', '00:04:20', (select id FROM albums 
WHERE albums.name = 'The Golden Age Of Grotesque')),
('Tourniquet', '00:04:44', (select id FROM albums 
WHERE albums.name = 'Antichrist Superstar')),
('The Beautiful People', '00:03:42', (select id FROM albums 
WHERE albums.name = 'Antichrist Superstar')),
('Slutgarden', '00:04:06', (select id FROM albums 
WHERE albums.name = 'The Golden Age Of Grotesque')),
('WE ARE CHAOS', '00:04:00', (select id from albums 
where albums.name = 'WE ARE CHAOS')),
('PERFUME', '00:03:33', (select id from albums 
where albums.name = 'WE ARE CHAOS')),
('Shit Mirror', '00:03:06', (select id FROM albums 
WHERE albums.name = 'Bad Witch')),
('Over and Out', '00:07:49', (select id FROM albums 
WHERE albums.name = 'Bad Witch')),
('God Break Down the Door', '00:04:14', (select id FROM albums 
WHERE albums.name = 'Bad Witch')),
('The Lovers', '00:04:09', (select id FROM albums 
WHERE albums.name = 'Add Violence')),
('Not Anymore', '00:03:06', (select id FROM albums 
WHERE albums.name = 'Add Violence')),
('I Can''t Explain', '00:02:05', (select id FROM albums 
WHERE albums.name = 'My Generation')),
('My Generation', '00:03:17', (select id FROM albums 
WHERE albums.name = 'My Generation')),
('Magic Bus', '00:04:35', (select id FROM albums 
WHERE albums.name = 'The Who Sell Out')),
('Behind Blue Eyes', '00:03:41', (select id FROM albums 
WHERE albums.name = 'Who''s Next')),
('Who Are You', '00:05:06', (select id FROM albums 
WHERE albums.name = 'Who Are You'));


INSERT INTO collections (name, year)
VALUES 
('Honk', 2019),
('Unwind', 2020),
('David Bowie', 2015),
('The Best of the Doors', 2020),
('The Best of Led Zeppelin', 2019),
('Echoes - The Best Of Pink Floyd', 2001),
('Lest We Forget: The Best Of', 2004),
('The Who Hits 50', 2014);


INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('Miss You', 'Rain Fall Down', 'Start Me Up', 'Brown Sugar', 'Streets Of Love') AND collections.name = 'Honk');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('Miss You', 'Rain Fall Down') AND collections.name = 'Unwind');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('Diamond Dogs', 'Space Oditty', 'Station to Station', 'Fame') AND collections.name = 'David Bowie');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('Break on Through (To the Other Side)', 'Back Door Man', 'The End', 'Roadhouse Blues', 'My Eyes Have Seen You') AND collections.name = 'The Best of the Doors');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('Immigrant Song', 'Babe I''m Gonna Leave You', 'Tangerine', 'Friends', 'Your Time Is Gonna Come') AND collections.name = 'The Best of Led Zeppelin');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('Money', 'Sheep', 'Time', 'Comfortably Numb', 'High Hopes', 'Keep Talking') AND collections.name = 'Echoes - The Best Of Pink Floyd');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('The Love Song', 'The Dope Show', 'This Is the New Shit', 'Tourniquet', 'The Beautiful People') AND collections.name = 'Lest We Forget: The Best Of');

INSERT INTO collections_tracks
SELECT tracks.id, collections.id FROM tracks, collections
WHERE (tracks.name IN ('I Can''t Explain', 'My Generation', 'Magic Bus', 'Behind Blue Eyes', 'Who Are You') AND collections.name = 'The Who Hits 50');









