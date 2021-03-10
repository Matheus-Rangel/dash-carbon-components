import React, {useState} from 'react';
import {MultiSelect as MultiSelectCarbon} from 'carbon-components-react';
import PropTypes from 'prop-types';

/**
 * MultiSelect
 */
const MultiSelectFilterable = ({
                                   disabled, locale, selectedItems, light, selectionFeedback, direction, id, invalid,
                                   invalidText, items, label, setProps, size, titleText
                               }) => {
    const [currentItems, setCurrentItems] = useState(selectedItems);
    const [menuOpen, setMenuOpen] = useState(false);
    return (
        <MultiSelectCarbon.Filterable
            disabled={disabled} locale={locale} initialSelectedItems={selectedItems}
            light={light} selectionFeedback={selectionFeedback} direction={direction} id={id}
            invalid={invalid} invalidText={invalidText} items={items} placeholder={label} size={size}
            titleText={titleText} itemToString={(item) => item}
            onChange={({selectedItems}) => {
                if (!menuOpen) {
                    setProps({selectedItems})
                } else {
                    setCurrentItems(selectedItems)
                }
            }}
            onMenuChange={(menuChange) => {
                if (!menuChange) {
                    setProps({selectedItems: currentItems})
                } else {
                    setMenuOpen(menuChange)
                }
            }}
        />
    );
};
MultiSelectFilterable.propTypes = {
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
    /**
     * The list of the selected items
     */
    selectedItems: PropTypes.arrayOf(PropTypes.string),
    /** Prop passed by Dash */
    setProps: PropTypes.func,
}
MultiSelectFilterable.defaultProps = {
    selectedItems: []
}
export default MultiSelectFilterable
