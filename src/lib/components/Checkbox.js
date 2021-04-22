import React from 'react'
import PropTypes from 'prop-types'
import {Checkbox as CarbonCheckbox} from "carbon-components-react";


/**
 * Checkbox Input
 */
const Checkbox = ({id, label, value, setProps, ...other}) => {
    return <CarbonCheckbox
        id={id} labelText={label} checked={value}
        onChange={(value) => setProps({value})} {...other}
    />
}

Checkbox.propTypes = {
    /**
     * Provide an `id` to uniquely identify the Checkbox input
     */
    id: PropTypes.string.isRequired,
    /**
     * Provide a label to provide a description of the Checkbox input that you are
     * exposing to the user
     */
    label: PropTypes.node.isRequired,
    /**
     * Specify whether the label should be hidden, or not
     */
    hideLabel: PropTypes.bool,
    /**
     * Specify whether the Checkbox should be disabled
     */
    disabled: PropTypes.bool,
    /**
     * Specify whether the underlying input is checked
     */
    value: PropTypes.bool,
    /**
     * Specify a title for the <label> node for the Checkbox
     */
    title: PropTypes.string,
    /**
     * Dash function
     */
    setProps: PropTypes.func,
    /**
     * The inline styles
     */
    style: PropTypes.object,
    /**
     * Specify an optional className to be applied to the <label> node
     */
    className: PropTypes.string
}
Checkbox.defautProps = {
    value: false
}
export default Checkbox
