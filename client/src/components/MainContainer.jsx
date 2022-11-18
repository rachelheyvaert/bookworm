import React from 'react'
import { Route, Routes } from "react-router-dom";
import Login from './Login';
import ReviewForm from './ReviewForm';
import BookContainer from './BookContainer';
import Welcome from './Welcome';
import Signup from './Signup';


const MainContainer = () => {
  return (
    <div>
      <Routes>
        <Route path="/"
        element= {<Welcome />} 
        />
        <Route path="/books"
        element={<BookContainer
          />} 
        />
        <Route path="/login" 
          element={<Login />} 
        />
        <Route path="/signup"
        element={<Signup />}
        />
        <Route path="/reviews/new" 
          element={<ReviewForm />}
        />
      </Routes>
     </div>
  )
}

export default MainContainer