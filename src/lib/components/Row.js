import React from 'react'
import PropTypes from "prop-types";

const Row = ({children}) => <div className="bx--row">{children}</div>
Row.propTypes = {
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
}
export default Row;
