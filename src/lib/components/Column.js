import React from 'react'
import PropTypes from "prop-types";
import cx from 'classnames'
const Column = ({children, columnSizes, offsetSizes}) => {
    const classNames = cx([
        ...columnSizes.map(value => 'bx--col-' + value),
        ...offsetSizes.map(value => 'bx--offset-' + value)
    ]);
    return (
        <div className={classNames}>{children}</div>
    )
}
Column.propTypes = {
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
    columnSizes: PropTypes.arrayOf(PropTypes.string),
    offsetSizes: PropTypes.arrayOf(PropTypes.string)
}
export default Column;
