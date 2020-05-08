import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import VideoRoomComponent from './components/VideoRoomComponent';

ReactDOM.render(
  <VideoRoomComponent
    openviduServerUrl={process.env.REACT_APP_OPENVIDU_SERVER_URL}
    openviduSecret={process.env.REACT_APP_OPENVIDU_SECRET} />, 
    document.getElementById('root'));
