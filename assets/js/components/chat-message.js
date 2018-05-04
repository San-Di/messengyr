import React from 'react';
import ReactDOM from 'react-dom';

class ChatMessage extends React.Component {
    render() {
        return (
            <li className="user">
            <p>
              "Chat-message: Here's a message!"
            </p>
          </li>
        )
    }
}

export default ChatMessage;
