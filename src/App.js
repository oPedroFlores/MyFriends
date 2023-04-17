import React from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import './App.css';
import Footer from './Components/Footer';
import Header from './Components/Header';
import Home from './Components/Home';
import Login from './Components/Login/Login';
import { UserStorage } from './UserContext';
import { LikeStorage } from './LikeContext';
import { InfoStorage } from './InfoContext';
import User from './Components/User/User';
import ProtectedRoute from './Components/Helper/ProtectedRoute';
import PhotoComments from './Components/Photo/Photo';
import UserProfile from './Components/User/UserProfile';
import NotFound from './Components/NotFound';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <UserStorage>
          <LikeStorage>
            <InfoStorage>
              <Header />
              <main className="AppBody">
                <Routes>
                  <Route path="/" element={<Home />} />
                  <Route path="login/*" element={<Login />} />
                  <Route path="foto/:id" element={<PhotoComments />} />
                  <Route path="perfil/:user" element={<UserProfile />} />
                  <Route path="*" element={<NotFound />} />
                  <Route
                    path="conta/*"
                    element={
                      <ProtectedRoute>
                        <User />
                      </ProtectedRoute>
                    }
                  />
                </Routes>
              </main>
              <Footer />
            </InfoStorage>
          </LikeStorage>
        </UserStorage>
      </BrowserRouter>
    </div>
  );
}

export default App;
