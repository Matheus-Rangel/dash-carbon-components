import React from 'react';
import {RadioButton, RadioButtonGroup as CarbonRadioButtonGroup} from "carbon-components-react";
import PropTypes from 'prop-types';

/**
 * Radio Group Component
 */
const RadioButtonGroup = (
    {legendText, value, setProps, radiosButtons, ...others}) => {
    const buttons = radiosButtons.map(({label, value, id}) => (
        <RadioButton key={value} labelText={label} id={id} value={value}/>
    ));
    console.log(legendText)
    return (
        <CarbonRadioButtonGroup {...others} valueSelected={value} onChange={(value) => setProps({value})}>
            {buttons}
        </CarbonRadioButtonGroup>
    );
}

RadioButtonGroup.propTypes = {
    /**
     * Provide a legend to the RadioButtonGroup input that you are
     * exposing to the user
     */
    legendText: PropTypes.node,
    /**
     * Specify the name of the underlying `<input>` nodes
     */
    name: PropTypes.string.isRequired,
    /**
     * The radios buttons inside this group
     */
    radiosButtons: PropTypes.arrayOf(
        PropTypes.shape({
            label: PropTypes.string, value: PropTypes.string, id: PropTypes.string
        })
    ),
    /**
     * Specify a custom `id` for the radio group
     */
    id: PropTypes.string,
    /**
     * The value selected
     */
    value: PropTypes.string,
    /**
     * Provide where label text should be placed
     */
    labelPosition: PropTypes.oneOf(['left', 'right']),
    /**
     * Provide where radio buttons should be placed
     */
    orientation: PropTypes.oneOf(['horizontal', 'vertical']),
    /**
     * Dash function
     */
    setProps: PropTypes.func,
    /**
     * Specify whether the group is disabled
     */
    disabled: PropTypes.bool,
    /**
     * Provide an optional className to be applied to the container node
     */
    className: PropTypes.string,
};
RadioButtonGroup.defaultProps = {
    radiosButtons: [],
};
export default RadioButtonGroup;
