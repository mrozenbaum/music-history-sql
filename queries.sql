/* Query all of the entries in the Genre table */
select * from genre
select * from artist
select * from album
select * from song


/* Using the INSERT statement, add one of your favorite artists to the Artist table. */
insert into artist values (null, 'Beyonce', 2003);


/* Using the INSERT statement, add one, or more, albums by your artist to the Album table. */
insert into album select null,
'Dangerously In Love', 
'6-24-2003',
3660,
'Columbia',
a.ArtistId,
g.GenreId
from Artist a, Genre g where a.ArtistName='Beyonce' and g.Label = 'R&B';

select * from Album

/* Using the INSERT statement, add some songs that are on that album to the Song table. */

/* Dangerously in love */
insert into Song select null,
'Crazy In Love',
240,
'6-24-2003',
g.GenreId,
a.ArtistId,
al.AlbumId
from Genre g, Artist a, Album al where g.Label='R&B' and a.ArtistName='Beyonce' and al.Title='Dangerously In Love';


select 
g.GenreId,
a.ArtistId,
al.AlbumId
from Genre g, Artist a, Album al where g.Label='R&B' 
and a.ArtistName='Beyonce' 
and al.Title='Dangerously In Love';


select * from Song where Song.title = 'Crazy In Love';
select * from Song where ArtistId = 29


insert into song select null,
'Naughty Girl',
210,
'6/24/2003',
g.GenreId,
a.ArtistId,
al.AlbumId
from Genre g, Artist a, Album al where g.Label='R&B' and a.ArtistName='Beyonce' and al.Title='Dangerously In Love';


 select * from song
 select * from Song where Song.title = 'Naughty Girl';
 
 select * from song where Song.title ='Naughty Girl';
g.GenreId,
a.ArtistId,
al.AlbumId
from Genre g, Artist a, Album al where g.Label='R&B' 
and a.ArtistName='Beyonce' 
and al.Title='Dangerously In Love';
 
 
 insert into song select null,
'Me Myself And I',
210,
'6/24/2003',
g.GenreId,
a.ArtistId,
al.AlbumId
from Genre g, Artist a, Album al where g.Label='R&B' and a.ArtistName='Beyonce' and al.Title='Dangerously In Love';

 /* Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in.*/
 select * from song where Song.title ='Me Myself And I';
 select * from song where Song.title ='Crazy In Love';
 select * from song where Song.title ='Naughty Girl';
 
/* Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.*/
select s.Title SongTitle, al.Title AlbumTitle, a.ArtistName
from Song s
left join Album al on s.AlbumId = al.AlbumId
left join Artist a on al.ArtistId = a.ArtistId
where a.ArtistName = 'Beyonce';

/*Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.*/
select al.Title, count(s.SongId) NumberOfSongs
from Song s, Album al
where s.AlbumId = al.AlbumId
group by al.AlbumId;

/*Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.*/
select a.ArtistName, count(s.SongId) NumberOfSongs
from Song s, Artist a
where  s.ArtistId = a.ArtistId
group by a.ArtistId;

/*Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.*/
select g.label, count(s.SongId) NumberOfSongs
from Song s, Genre g
where s.GenreId = g.GenreId
group by s.GenreId;

/*Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.*/
select al.Title, max(al.albumlength) LongestAlbum
from Album al;

/*Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.*/
 select s.Title SongTitle, al.Title AlbumTitle, max(s.songlength) LongestSong
 from Song s, Album al
 where s.AlbumId = al.AlbumId;