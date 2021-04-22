import React, {useRef} from 'react';
import {NumberInput as NumberInputCarbon} from "carbon-components-react";
import PropTypes from 'prop-types';

/**
 * NumberInput component
 */
const NumberInput =
    ({
         setProps,
         ...other
    }) => {
    const input = useRef(null);
    const setValue = () => {
        if (input.current.value) {
            const inputValue = input.current.value
            const value = parseInt(inputValue, 10)
            setProps({value})
        }
    }
    return <NumberInputCarbon
        ref={input}
        onChange={setValue}
        {...other}
    />
}
NumberInput.propTypes = {
    /**
     * `true` to allow empty string.
     */
    allowEmpty: PropTypes.bool,

    /**
     * style of the input
     */
    style: PropTypes.object,
    /**
     * Provide a description that would be used to best describe the use case of the NumberInput component
     */
    ariaLabel: PropTypes.string,

    /**
     * Specify an optional className to be applied to the wrapper node
     */
    className: PropTypes.string,

    /**
     * Optional starting value for uncontrolled state
     */
    defaultValue: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),

    /**
     * Specify if the control should be disabled, or not
     */
    disabled: PropTypes.bool,

    /**
     * Provide text that is used alongside the control label for additional help
     */
    helperText: PropTypes.string,

    /**
     * Specify whether you want the underlying label to be visually hidden
     */
    hideLabel: PropTypes.bool,

    /**
     * Provide a description for up/down icons that can be read by screen readers
     */
    iconDescription: PropTypes.string,

    /**
     * Specify a custom `id` for the input
     */
    id: PropTypes.string.isRequired,

    /**
     * Specify if the currently value is invalid.
     */
    invalid: PropTypes.bool,

    /**
     * Message which is displayed if the value is invalid.
     */
    invalidText: PropTypes.string,

    /**
     * Generic `label` that will be used as the textual representation of what
     * this field is for
     */
    label: PropTypes.string,

    /**
     * `true` to use the light version.
     */
    light: PropTypes.bool,

    /**
     * The maximum value.
     */
    max: PropTypes.number,

    /**
     * The minimum value.
     */
    min: PropTypes.number,

    /**
     * Specify if the component should be read-only
     */
    readOnly: PropTypes.bool,

    /**
     * Specify the size of the Number Input. Currently supports either `sm` or `xl` as an option.
     */
    size: PropTypes.oneOf(['sm', 'xl']),

    /**
     * Specify how much the valus should increase/decrease upon clicking on up/down button
     */
    step: PropTypes.number,

    /**
     * Specify the value of the input
     */
    value: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),

    /**
     * Specify whether the control is currently in warning state
     */
    warn: PropTypes.bool,

    /**
     * Provide the text that is displayed when the control is in warning state
     */
    warnText: PropTypes.string,

    /**
     * Prop passed by dash
     */
    setProps: PropTypes.func
};

NumberInput.defaultProps = {
    disabled: false,
    hideLabel: false,
    iconDescription: 'choose a number',
    step: 1,
    invalid: false,
    invalidText: 'Provide invalidText',
    warn: false,
    warnText: '',
    ariaLabel: 'Numeric input field with increment and decrement buttons',
    helperText: '',
    light: false,
    allowEmpty: false,
};
export default NumberInput
