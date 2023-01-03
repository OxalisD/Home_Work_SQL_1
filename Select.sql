select name, COUNT(*) from genres_artists ga
join genres g on g.id = ga.genre_id
group by name;

select COUNT(*) from tracks t 
join albums a on t.album = a.id 
where a.year between 2019 and 2020;

select a.name, AVG(duration) from albums a 
join tracks t on t.album = a.id 
group by a.name;

select art.name from artists art
WHERE art.id not in (
	select aa.artist_id 
	from artist_albums aa  
	join albums a on aa.album_id = a.id 
	where a.year = 2020
);

select c.name 
from collections c 
where c.id in (
	select ct.collection_id 
	from collections_tracks ct
	join tracks t on t.id = ct.track_id
	where t.album in (
		select aa.album_id 
		from artist_albums aa
		where aa.artist_id = (
		select a.id
		from artists a
		where a.name = 'The Rolling Stones')
	)
);

select c.name
from collections c 
join collections_tracks ct on c.id = ct.collection_id 
join tracks t on ct.track_id = t.id 
join albums a on t.album = a.id 
join artist_albums aa on a.id = aa.album_id 
join artists art on aa.artist_id  = art.id 
where art.name = 'The Rolling Stones'
group by c.name

select a.name
from albums a 
join artist_albums aa on a.id = aa.album_id 
where aa.artist_id in (
	select ga.artist_id
	from genres_artists ga
	group by ga.artist_id
	having COUNT(*) > 1
);

select t.name
from tracks t 
where t.id not in (
	select distinct ct.track_id
	from collections_tracks ct
);

select art.name
from artists art
join artist_albums aa on art.id = aa.artist_id 
join tracks t on aa.album_id = t.album 
where t.duration = (
	select min(duration) 
	from tracks
);

select a.name 
from albums a 
where a.id in (
	select t.album 
	from tracks t
	group by t.album
	having COUNT(*) = (
		select COUNT(*) 
		from tracks
		group by album 
		order by COUNT(*)
		limit 1
	)
);






