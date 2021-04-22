import React from 'react'
import {DatePicker as DatePickerCarbon, DatePickerInput} from "carbon-components-react";
import PropTypes from "prop-types";

/**
 * DatePickerRange, the id of the DateInputs will be id + '-start' and id + '-end'
 */
const DatePickerRange = ({
    id,
    startLabel,
    endLabel,
    placeholder,
    setProps,
    ...other
}) => {
    return (
        <DatePickerCarbon id={id}
                          datePickerType="range"
                          {...other}
                          onChange={(change) => {
                              if (change.length === 2) {
                                  setProps({value: change.map(date => date.toISOString())})
                              }
                          }}
        >
            <DatePickerInput
                id={id + '-start'}
                placeholder={placeholder}
                labelText={startLabel}/>
            <DatePickerInput
                id={id + '-end'}
                placeholder={placeholder}
                labelText={endLabel}/>
        </DatePickerCarbon>
    )
}
DatePickerRange.propTypes = {
    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string.isRequired,
    /**
     * The date format.
     */
    dateFormat: PropTypes.string,
    /**
     * True to use the light version.
     */
    light: PropTypes.bool,
    /**
     * The language locale used to format the days of the week, months, and numbers.
     * The full list of supported locales can be found here https://github.com/flatpickr/flatpickr/tree/master/src/l10n
     */
    locale: PropTypes.string,
    /**
     * The maximum date that a user can pick to.
     */
    maxDate: PropTypes.string,
    /**
     * The minimum date that a user can start picking from.
     */
    minDate: PropTypes.string,
    /**
     * True to use the short version.
     */
    short: PropTypes.bool,
    /**
     * The value of the date value provided to flatpickr
     */
    value: PropTypes.oneOfType([PropTypes.string, PropTypes.arrayOf(PropTypes.string)]),
    /**
     * Start input label
     */
    startLabel: PropTypes.string.isRequired,
    /**
     * End input label
     */
    endLabel: PropTypes.string.isRequired,
    /**
     *  placeholder
     */
    placeholder: PropTypes.string.isRequired,
    /** Prop passed by Dash */
    setProps: PropTypes.func,
}
export default DatePickerRange
