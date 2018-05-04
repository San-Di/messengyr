import React from 'react';
import ReactDOM from 'react-dom';

import ChatContainer from "./components/chat-container";
import MenuContainer from "./components/menu-container";

class App extends React.Component {
    render() {

        

        return (
            <div>
                <MenuContainer />
                <ChatContainer />
            </div>
        )
    }
}

ReactDOM.render(
    <App />,
    document.getElementById('app'),
);
