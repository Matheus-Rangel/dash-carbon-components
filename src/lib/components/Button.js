import React from 'react';
import {Button as CarbonButton} from 'carbon-components-react';
import PropTypes from 'prop-types'

export const ButtonKinds = [
    'primary',
    'secondary',
    'danger',
    'ghost',
    'danger--primary',
    'danger--ghost',
    'danger--tertiary',
    'tertiary',
];

/**
 * Carbon Button
 */
const Button = ({
                    setProps, n_clicks, children, ...others
                }) => {
    return <CarbonButton {...others} onClick={() => setProps({n_clicks: n_clicks + 1})}>
        {children}
    </CarbonButton>
}

Button.propTypes = {
    /**
     * The id of the button
     */
    id: PropTypes.string.isRequired,
    /**
     * Specify the content of your Button
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
    /**
     * jsx Style
     */
    style: PropTypes.object,
    /**
     * Specify an optional className to be added to your Button
     */
    className: PropTypes.string,
    /**
     * Specify whether the Button should be disabled, or not
     */
    disabled: PropTypes.bool,
    /**
     * Specify the message read by screen readers for the danger button variant
     */
    dangerDescription: PropTypes.string,
    /**
     * Optionally specify an href for your Button to become an `<a>` element
     */
    href: PropTypes.string,
    /**
     * Specify whether the Button is currently selected
     */
    isSelected: PropTypes.bool,
    /**
     * Specify the kind of Button you want to create
     */
    kind: PropTypes.oneOf(ButtonKinds).isRequired,
    /**
     * Optional prop to specify the role of the Button
     */
    role: PropTypes.string,
    /**
     * Specify the size of the button, from a list of available sizes.
     * For `default` buttons, this prop can remain unspecified.
     */
    size: PropTypes.oneOf(['default', 'field', 'small', 'sm', 'lg', 'xl']),
    /**
     * Specify the alignment of the tooltip to the icon-only button.
     * Can be one of: start, center, or end.
     */
    tooltipAlignment: PropTypes.oneOf(['start', 'center', 'end']),

    /**
     * Specify the direction of the tooltip for icon-only buttons.
     * Can be either top, right, bottom, or left.
     */
    tooltipPosition: PropTypes.oneOf(['top', 'right', 'bottom', 'left']),

    /**
     * Optional prop to specify the type of the Button
     */
    type: PropTypes.oneOf(['button', 'reset', 'submit']),
    /**
     * Number of times this button has been clicked
     */
    n_clicks: PropTypes.number,
    /**
     * Dash function
     */
    setProps: PropTypes.func
}

Button.defaultProps = {
    n_clicks: 0
}
export default Button;
