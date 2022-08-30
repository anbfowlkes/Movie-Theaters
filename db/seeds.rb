t1 = Theater.create(name: "CobbleHill Cinemas", street_address: "50 N 7th Street, Brooklyn NY, 11249")
t2 = Theater.create(name: "Regal Essex", street_address: "130 Delancy, Manhattan NY, 10033")

m1 = Movie.create(name: "Spiderman: No Way Home", runtime: '108 minutes', rating: 'PG-13', theater_id: t1.id)
m2 = Movie.create(name: "Top Gun", runtime: '120 minutes', rating: 'G', theater_id: t2.id)
m3 = Movie.create(name: "Interstellar", runtime: '113 minutes', rating: 'G', theater_id: t2.id)

s1 = Showtime.create(movie_id: m3.id, start_time: 2.hours.from_now, end_time: 2.hours.from_now + 90.minutes)
s2 = Showtime.create(movie_id: m3.id, start_time: 4.hours.from_now, end_time: 2.hours.from_now + 90.minutes)




