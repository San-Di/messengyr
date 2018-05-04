import React from 'react';
import ReactDOM from 'react-dom';

import ChatMessage from './chat-message';

class ChatContainer extends React.Component {
    render() {
        return (
            <div className="chat">

            <ul>
                <ChatMessage />
            </ul>

            <div className="compose-box">
                <input placeholder="Type a message..." />
                <button>Send</button>
            </div>

            </div>
        )
    }
}

export default ChatContainer;
