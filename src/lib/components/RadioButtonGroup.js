import React from 'react';
import {RadioButton, RadioButtonGroup as CarbonRadioButtonGroup} from "carbon-components-react";
import PropTypes from 'prop-types';

const RadioButtonGroup = (
    {legendText, name, value, labelPosition, orientation, setProps, disabled, radiosButtons, id}) => {
    const buttons = radiosButtons.map(({labelText, value, id}) => (
        <RadioButton key={value} labelText={labelText} id={id} value={value}/>
    ));
    console.log(legendText)
    return (
        <CarbonRadioButtonGroup id={id} labelPosition={labelPosition} orientation={orientation}
                                disabled={disabled} legendText={legendText} name={name}
                                valueSelected={value} onChange={(value) => setProps({value})}>
            {buttons}
        </CarbonRadioButtonGroup>
    );
}

RadioButtonGroup.propTypes = {
    legendText: PropTypes.string,
    name: PropTypes.string,
    radiosButtons: PropTypes.arrayOf(
        PropTypes.shape({
            labelText: PropTypes.string, value: PropTypes.string, id: PropTypes.string
        })
    ),
    id: PropTypes.string,
    value: PropTypes.string,
    labelPosition: PropTypes.oneOf(['left', 'right']),
    orientation: PropTypes.oneOf(['horizontal', 'vertical']),
    setProps: PropTypes.func,
    disabled: PropTypes.bool
};
RadioButtonGroup.defaultProps = {
    radiosButtons: [],
};
export default RadioButtonGroup;
