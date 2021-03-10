import React from 'react'
import PropTypes from 'prop-types'
import {Checkbox as CarbonCheckbox} from "carbon-components-react";

const Checkbox = ({id, label, disabled, value, title, setProps}) => {
    return <CarbonCheckbox
        id={id} labelText={label} disabled={disabled} checked={value} title={title}
        onChange={(value) => setProps({value})}
    />
}

Checkbox.propTypes = {
    id: PropTypes.string.isRequired,
    label: PropTypes.string.isRequired,
    disabled: PropTypes.bool,
    value: PropTypes.bool.isRequired,
    title: PropTypes.string,
    setProps: PropTypes.func
}
export default Checkbox
