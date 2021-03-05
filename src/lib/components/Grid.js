import React from 'react';
import PropTypes from 'prop-types'

/**
 * Carbon Grid
 */
const Grid = ({children, className, style}) => <div style={style} className={'bx--grid ' + className}>{children}</div>
Grid.propTypes = {
    /**
     * The inline styles
     */
    style: PropTypes.object,
    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string,
    /**
     The children of the element
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
    /**
     * The class of the element
     */
    className: PropTypes.string
}
Grid.defaultProps={
    className: ''
}
export default Grid;
