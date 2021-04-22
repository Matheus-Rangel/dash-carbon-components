import React from 'react'
import PropTypes from 'prop-types'
import {Link as CarbonLink} from 'carbon-components-react'

/**
 * Link component
 */
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
     /**
     * The id of the link
     */
    id: PropTypes.string,
    /**
     * Inline styles
     */
    style: PropTypes.object,
    /**
     * Provide a custom className to be applied to the containing `<a>` node
     */
    className: PropTypes.string,
    /**
     * Specify if the control should be disabled, or not
     */
    disabled: PropTypes.bool,
    /**
     * Specify whether you want the inline version of this control
     */
    inline: PropTypes.bool,
    /**
     * Specify the size of the Link. Currently supports either `sm`, 'md' (default) or 'lg` as an option.
     */
    size: PropTypes.oneOf(['sm', 'md', 'lg']),
    /**
     * Number of times this link has been clicked
     */
    n_clicks: PropTypes.number,
    /**
     * Dash function
     */
    setProps: PropTypes.func,
    /**
     * Specify whether you want the link to receive visited styles after the link has been clicked
     */
    visited: PropTypes.bool,
    /**
     * Provide the `href` attribute for the `<a>` node
     */
    href: PropTypes.string,
    /**
     * Provide the content for the Link
     */
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
