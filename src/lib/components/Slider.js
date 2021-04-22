import React from 'react';
import PropTypes from 'prop-types';
import {Slider as CarbonSlider} from 'carbon-components-react'

/**
 * Slider
 */
const Slider = ({
                    id, disabled, setProps, ...other
                }) => {
    return (
        <CarbonSlider
            id={id}
            disable={disabled.toString()}
            onRelease={({value}) => setProps({value})}
            {...other}
        />
    );
}
Slider.propTypes = {
    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string,
    /** Form item name */
    name: PropTypes.string,
    /** The form element type  */
    inputType: PropTypes.string,
    /** The ARIA label for the <input> */
    ariaLabelInput: PropTypes.string,
    /** Label text */
    labelText: PropTypes.string.isRequired,
    /** Disabled */
    disabled: PropTypes.bool,
    /** Light variant */
    light: PropTypes.bool,
    /** Without text input */
    hideTextInput: PropTypes.bool,
    /** The value */
    value: PropTypes.number.isRequired,
    /** The minimum value */
    min: PropTypes.number.isRequired,
    /** The maximum value  */
    max: PropTypes.number.isRequired,
    /** The step  */
    step: PropTypes.number.isRequired,
    /** The step factor for Shift+arrow keys */
    stepMultiplier: PropTypes.number,
    /** Prop passed by Dash */
    setProps: PropTypes.func,
}
Slider.defaultProps = {
    disabled: false,
    light: false,
    hideTextInput: false,
    ariaLabelInput: '',
    inputType: 'number',
    stepMultiplier: 5,
}
export default Slider
