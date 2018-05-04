import React from 'react';
import ReactDOM from 'react-dom';

class MenuMessage extends React.Component {
    render() {
        return (
            <li>
                <img className="avatar" />
                <div className="profile-container">
                    <p className="name">John Doe</p>

                    <date>Two hours ago</date>

                    <p className="message">
                        "Menu-message: Here's a message!"
                    </p>
                </div>
            </li>
        )
    }
}

export default MenuMessage;