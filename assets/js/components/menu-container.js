import React from 'react';
import ReactDOM from 'react-dom';

import MenuMessage from './menu-message';

import {connect} from 'react-redux';

class MenuContainer extends React.Component {
    render() {
        let rooms = this.props.rooms.map((room) => {
            return (
              <MenuMessage
                key={room.id}
                room={room}
              />
            );
          });
          
        return (
            <div className="menu">

            <div className="header">
                <h3>Messages</h3>
                <button className="compose"></button>
            </div>

            <ul>
                {rooms}
            </ul>

            </div>
        )
    }
}

MenuContainer.defaultProps = {
    room: [],
};

const mapStateToProps = (state) => {
    return {
        rooms: state,
    };
};

MenuContainer = connect(
    mapStateToProps,
)(MenuContainer);

export default MenuContainer;
