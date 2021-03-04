import React from 'react'
import PropTypes from "prop-types";

/**
 * Grid Row
 */
const Row = ({children, style, className, id}) => <div id={id} style={style} className={'bx--row ' + className}>{children}</div>
Row.propTypes = {
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
export default Row;
