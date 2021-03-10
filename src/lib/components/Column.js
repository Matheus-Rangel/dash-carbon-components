import React from 'react'
import PropTypes from "prop-types";
import cx from 'classnames'

/**
 * Row Column
 */
const Column = ({children, columnSizes, offsetSizes, className, style, id}) => {

    const classNames = cx([
        ...columnSizes.map(value => 'bx--col-' + value),
        ...offsetSizes.map(value => 'bx--offset-' + value),
        ...className.split(' ')
    ]);
    return (
        <div id={id} style={style} className={classNames}>{children}</div>
    )
}
Column.propTypes = {
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
        PropTypes.node
    ]),
    /**
     * The class of the element
     */
    className: PropTypes.string,
    /**
     * The size of the column with the display size, sm-4, lg-16 ...
     */
    columnSizes: PropTypes.arrayOf(PropTypes.string),
    /**
     * The size of the offset with the display size, lg-2 ...
     */
    offsetSizes: PropTypes.arrayOf(PropTypes.string)
}
Column.defaultProps = {
    className: '',
    offsetSizes: [],
    columnSizes: []
}
export default Column;
