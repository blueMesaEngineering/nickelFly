import React, { Component } from "react";
import "./App.css";

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      movies: []
    };
  }
  componentDidMount() {
    fetch("/api/movies")
      .then(response => response.json())
      .then(json => this.setState({ movies: json }))
      .catch(error => console.log(error));
  }

  renderMovies() {
    return this.state.movies.map(movie => <h1>{movie.title}</h1>);
  }

  render() {
    return <div className="App">{this.renderMovies()}</div>;
  }
}

export default App;
