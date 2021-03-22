import React, {useEffect, useState} from 'react';
import {MultiSelect as MultiSelectCarbon} from 'carbon-components-react';
import PropTypes from 'prop-types';

/**
 * MultiSelect
 */
const MultiSelect = ({
                         disabled, locale, value, light, selectionFeedback, direction, id, invalid,
                         invalidText, options, label, setProps, size, titleText, style
                     }) => {
    const [currentItems, setCurrentItems] = useState([]);
    const [menuOpen, setMenuOpen] = useState(false);
    const initialSelectedItems = options.filter(item=> item.value ?  value.includes(item.value) : value.includes(item))
    useEffect(() => {
        setCurrentItems(initialSelectedItems)
    }, [value]);
    const updateProps = (value) => {
        const values = value.map(item => item.value ? item.value : item)
        setProps({value: values})
    }
    return (
        <MultiSelectCarbon key={initialSelectedItems}
            disabled={disabled} locale={locale} initialSelectedItems={initialSelectedItems} light={light}
            selectionFeedback={selectionFeedback} direction={direction} id={id} invalid={invalid}
            invalidText={invalidText} items={options} label={label} size={size} style={style}
            titleText={titleText} itemToString={(item) => item.label ? item.label : item}
            onChange={({selectedItems}) => {
                if (!menuOpen) {
                    updateProps(selectedItems)
                } else {
                    setCurrentItems(selectedItems)
                }
            }}
            onMenuChange={(menuChange) => {
                if (!menuChange) {
                    updateProps(currentItems)
                } else {
                    setMenuOpen(menuChange)
                }
            }}
        />
    )
};
MultiSelect.propTypes = {
    /**
     * Disable the control
     */
    disabled: PropTypes.bool,
    style: PropTypes.object,
    /**
     * Specify the locale of the control.
     * Used for the default compareItems used for sorting the list of items in the control.
     */
    locale: PropTypes.string,
    /**
     * true to use the light version.
     */
    light: PropTypes.bool,
    /**
     * Specify feedback (mode) of the selection.
     * top: selected item jumps to top
     * fixed: selected item stays at it's position
     * top-after-reopen: selected item jump to top after reopen dropdown
     * default top-after-reopen
     */
    selectionFeedback: PropTypes.oneOf(['top', 'fixed', 'top-after-reopen']),
    /**
     * Specify the direction of the multiselect dropdown. Can be either top or bottom.
     * default bottom
     */
    direction: PropTypes.oneOf(['bottom, top']),
    /**
     * Id of the element
     */
    id: PropTypes.string.isRequired,
    /**
     * Is the current selection invalid.
     */
    invalid: PropTypes.bool,
    /**
     * The text to show if it is invalid.
     */
    invalidText: PropTypes.string,
    /**
     * List of items
     */
    options: PropTypes.arrayOf(PropTypes.oneOfType([
        PropTypes.string,
        PropTypes.shape({label: PropTypes.string, value: PropTypes.any})
    ])).isRequired,

    /**
     * Generic label that will be used as the textual representation of what this field is for
     */
    label: PropTypes.string,
    /**
     * Specify the size of the ListBox. Currently supports either sm, lg or xl as an option.
     */
    size: PropTypes.oneOf(['sm', 'lg', 'xl']),
    /**
     * Provide text to be used in a <label> element that is tied to the multiselect via ARIA attributes.
     */
    titleText: PropTypes.string,
    /**
     * The list of the selected items
     */
    value: PropTypes.arrayOf(PropTypes.any),
    /** Prop passed by Dash */
    setProps: PropTypes.func,
}
MultiSelect.defaultProps = {
    value: []
}
export default MultiSelect
