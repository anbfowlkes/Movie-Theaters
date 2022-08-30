# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Database tables/models (M):
Theater
 - name
 - street_address
Room
 - room_no
 - capacity:integer
 - theater_id:integer
Movie
 - name
 - description
 - rating:integer
 - runtime
 - genre
 - release_date:datetime
Showtime
 - movie_id:integer
 - start_time:datetime
 - end_time:datetime
Ticket
 - movie_id
 - showtime_id:integer
 - seat_id:integer
 - price:integer
Seat
 - movie_id
 - room_id:integer
 - available:boolean, default: true
 - is_accessible:boolean
Customer

## Controllers (C):
Moviews
Showtimes
Theaters

## View - ReactJS (V)
exists in the '/client' folder

## Model methods
We want to be able to call these methodsand get the expected result If we do this then we know our database is beings setup correctly
```
theaters => Theater.all
theater.movies => [list of movies]
movie.showtimes => [list of showtimes]
showtime.tickets
ticket.seat
```

discuss what models you need
then figure out what methods you want to be able to call on objects
