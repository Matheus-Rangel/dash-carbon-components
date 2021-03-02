import React from 'react'
import PropTypes from "prop-types";

const Grid = ({children}) => <div className="bx--grid">{children}</div>
Grid.propTypes = {
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
}
export default Grid;
