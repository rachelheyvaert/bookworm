import React from 'react'
import { Routes, Route} from "react-router-dom";
import Login from './Login';
import ReviewForm from './ReviewForm';
import BookContainer from '/BookContainer';


const MainContainer = () => {
  return (
    <div><Routes>
    <Route path="/"
    element= {<Home />} 
    />
    <Route path="/reviews"
    element={<BookContainer
       />} 
    />
    <Route path="/login" 
      element={<Login />} 
    />
    <Route path="/reviews/new" 
      element={<ReviewForm />}
    />
  </Routes></div>
  )
}

export default MainContainer