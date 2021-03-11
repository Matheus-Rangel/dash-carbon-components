import React from 'react';
import {Button as CarbonButton} from 'carbon-components-react';
import PropTypes from 'prop-types'
const Button = ({setProps, n_clicks, children, ...others
                }) => {
    return <CarbonButton {...others} onClick={() => setProps({n_clicks: n_clicks + 1})}>
        {children}
    </CarbonButton>
}

Button.propTypes = {
    id: PropTypes.string.isRequired,
    /**
     The children of the element
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
    style: PropTypes.object,
    className: PropTypes.string,
    disabled: PropTypes.bool,
    kind: PropTypes.string.isRequired,
    size: PropTypes.oneOf(['default', 'field', 'small', 'sm', 'lg', 'xl']),
    n_clicks: PropTypes.number,
    setProps: PropTypes.func
}

Button.defaultProps = {
    n_clicks: 0
}
export default Button;
