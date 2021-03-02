import React, {Component} from 'react';
import PropTypes from 'prop-types';
import {Slider as CarbonSlider} from 'carbon-components-react'
/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class Slider extends Component {
    render() {
        const {id, name, inputType, ariaLabelInput, disabled, light, hideTextInput, min, max, value, step,
            stepMultiplier,
            setProps} = this.props;
        return (
            <CarbonSlider
                id={id}
                name={name}
                inputType={inputType}
                ariaLabelInput={ariaLabelInput}
                disable={disabled.toString()}
                light={light}
                hideTextInput={hideTextInput}
                min={min}
                max={max}
                value={value}
                step={step}
                stepMultiplier={stepMultiplier}
                onRelease={({value}) => setProps({value})}
                />
        );
    }
}
Slider.propTypes = {
    /** Slider id */
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
    setProps: PropTypes.func
}
Slider.defaultProps = {
    disabled: false,
    light: false,
    hideTextInput: false,
    ariaLabelInput: '',
    inputType: 'number',
    stepMultiplier: 5,
}
