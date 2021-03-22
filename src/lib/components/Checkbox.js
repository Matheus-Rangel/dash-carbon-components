import React from 'react'
import PropTypes from 'prop-types'
import {Checkbox as CarbonCheckbox} from "carbon-components-react";

const Checkbox = ({id, label, disabled, value, title, setProps, style, className}) => {
    return <CarbonCheckbox
        id={id} labelText={label} disabled={disabled} checked={value} title={title}
        onChange={(value) => setProps({value})} style={style} className={className}
    />
}

Checkbox.propTypes = {
    id: PropTypes.string.isRequired,
    label: PropTypes.string.isRequired,
    disabled: PropTypes.bool,
    value: PropTypes.bool,
    title: PropTypes.string,
    setProps: PropTypes.func,
    style: PropTypes.object,
    className: PropTypes.string
}
Checkbox.defautProps = {
    value: false
}
export default Checkbox
