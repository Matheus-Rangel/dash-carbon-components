import React from 'react'
import {Dropdown as CarbonDropdown} from "carbon-components-react";
import PropTypes from 'prop-types'

const Dropdown = ({setProps, value, options, ...others}) => {
    const selectedItems = options.find(item=> 'value' in item ? value === item.value : value === item);
    return <CarbonDropdown
        onChange={({selectedItem}) => {
            const value = 'value' in selectedItem ? selectedItem.value : selectedItem;
            setProps({value})
        }}
        selectedItem={selectedItems}
        itemToString={(item) => item.label? item.label : item}
        items={options}
        {...others}
    />
}
Dropdown.propTypes = {
    /**
     * Disable the control
     */
    disabled: PropTypes.bool,

    /**
     * List of items
     */
    options: PropTypes.arrayOf(PropTypes.oneOfType([
      PropTypes.string,
      PropTypes.shape({label: PropTypes.string, value: PropTypes.any})
    ])).isRequired,

    /**
     * Specify a custom `id`
     */
    id: PropTypes.string.isRequired,

    /**
     * Specify whether you want the inline version of this control
     */
    inline: PropTypes.bool,

    /**
     * Specify if the currently selected value is invalid.
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
    label: PropTypes.node.isRequired,

    /**
     * Callback function for translating ListBoxMenuIcon SVG title
     */
    translateWithId: PropTypes.func,

    /**
     * 'aria-label' of the ListBox component.
     */
    ariaLabel: PropTypes.string,

    /**
     * In the case you want to control the dropdown selection entirely.
     */
    value: PropTypes.any,

    /**
     * `true` to use the light version.
     */
    light: PropTypes.bool,

    /**
     * Provide the title text that will be read by a screen reader when
     * visiting this control
     */
    titleText: PropTypes.oneOfType([PropTypes.string, PropTypes.node]),

    /**
     * Provide helper text that is used alongside the control label for
     * additional help
     */
    helperText: PropTypes.oneOfType([PropTypes.string, PropTypes.node]),

    /**
     * Function passed by Dash
     */
    setProps: PropTypes.func,

    /**
     * Style of the component
     */
    style: PropTypes.object
};
Dropdown.defaultProps = {
    options: []
}
export default Dropdown;
