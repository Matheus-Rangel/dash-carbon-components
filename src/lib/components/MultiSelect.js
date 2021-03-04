import React from 'react';
import {MultiSelect as MultiSelectCarbon} from 'carbon-components-react';
import PropTypes from 'prop-types';

const MultiSelect = ({
                         disabled, locale, initialSelectedItems, light, selectionFeedback, direction, id, invalid,
                         invalidText, items, label, setProps, size, titleText
                     }) => {

    return (
        <MultiSelectCarbon disabled={disabled} locale={locale} initialSelectedItems={initialSelectedItems} light={light}
                           selectionFeedback={selectionFeedback} direction={direction} id={id} invalid={invalid}
                           invalidText={invalidText} items={items} label={label} setProps={setProps} size={size}
                           titleText={titleText}
                           itemToString={(item) => item} />
    )
};
MultiSelect.propTypes = {
    /**
     * Disable the control
     */
    disabled: PropTypes.bool,
    /**
     * Specify the locale of the control.
     * Used for the default compareItems used for sorting the list of items in the control.
     */
    locale: PropTypes.string,
    /**
     * Allow users to pass in arbitrary items from their collection that are pre-selected
     */
    initialSelectedItems: PropTypes.arrayOf(PropTypes.string),
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
    items: PropTypes.arrayOf(PropTypes.string).isRequired,
    /**
     * Generic label that will be used as the textual representation of what this field is for
     */
    label: PropTypes.string.isRequired,
    /**
     * Specify the size of the ListBox. Currently supports either sm, lg or xl as an option.
     */
    size: PropTypes.oneOf(['sm', 'lg', 'xl']),
    /**
     * Provide text to be used in a <label> element that is tied to the multiselect via ARIA attributes.
     */
    titleText: PropTypes.string,
    /** Prop passed by Dash */
    setProps: PropTypes.func,
}
export default MultiSelect