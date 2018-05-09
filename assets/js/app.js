import React from 'react';
import ReactDOM from 'react-dom';
import 'whatwg-fetch'; 

import { createStore } from 'redux';
import { Provider } from 'react-redux';

import ChatContainer from "./components/chat-container";
import MenuContainer from "./components/menu-container";

import DATA from './fake-data';

const rooms = () => {
    return DATA.rooms;
};

const store = createStore(rooms);

class App extends React.Component {

    constructor() {
        super();
        
        this.state = {
            rooms: [],
            messages: [],
        };
    }

    // componentDidMount() {
    //     fetch('/api/rooms', {
    //         headers: {
    //             "Authorization": "Bearer " + window.jwtToken,
    //         },
    //     })
    //     .then((response) => {
    //       return response.json();
    //     })
    //     .then((response) => {
    //         let rooms = response.rooms;

    //         this.setState({
    //             rooms: rooms,
    //             messages: rooms[0].messages,
    //         });
    //     })
    //     .catch((err) => {
    //       console.error(err);
    //     });
    //   }

    render() {

        const ROOMS = DATA.rooms;
        const MESSAGES = DATA.rooms[0].messages;

        return (
            <div>
                <MenuContainer />
                <ChatContainer />
            </div>
        )
    }
}

ReactDOM.render(
    <Provider store={store}>
        <App />
    </Provider>,
    document.getElementById('app'),
);
