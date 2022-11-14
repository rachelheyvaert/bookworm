
import './App.css';
import { useEffect, useState } from 'react';
import Login from './components/Login';
// import Navigation from './components/Navigation';
function App() {

const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (user) {
    return <h2>Welcome, {user.username}!</h2>;
  } else {
    return (
    <div>
    <Login onLogin={setUser} />
      </div>);
  }
}


export default App;
