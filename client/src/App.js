import './App.css';
import { useState, useEffect } from 'react'

function App() {
  const [movies, setMovies] = useState([])
  
  useEffect(() => {
    const getMovies = async () => {
      let req = await fetch('http://localhost:3000/theaters/1')
      let res = await req.json()
      console.log('Response', res)
      setMovies(res.movies)
    }
    getMovies()
  }, [])

  return (
    <div className="App">
      <h2>Movie List</h2>
      {
        movies.map((movie) => {
          return(
            <div key={movie.id}>
              {movie.name}
            </div>
          )
        })
      }
    </div>
  );
}

export default App;
