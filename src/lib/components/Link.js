import React from  'react'
import PropTypes from 'prop-types'
import {Link as CarbonLink} from 'carbon-components-react'
const Link = ({n_clicks, setProps, children, ...others}) => {
    return <CarbonLink
        href=""
        onClick={(e) => {
            e.preventDefault();
            setProps({n_clicks: n_clicks + 1})
        }}
        {...others}
    >
        {children}
    </CarbonLink>
}
Link.propTypes = {
    id: PropTypes.string,
    style: PropTypes.object,
    className: PropTypes.string,
    disabled: PropTypes.bool,
    inline: PropTypes.bool,
    size: PropTypes.oneOf(['sm', 'lg']),
    n_clicks: PropTypes.number,
    setProps: PropTypes.func,
    visited: PropTypes.bool,
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
}

Link.defaultProps = {
    n_clicks: 0,
    visited: false,
}

export default Link
