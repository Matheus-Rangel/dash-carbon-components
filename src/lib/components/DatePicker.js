import React from 'react'
import {DatePicker as DatePickerCarbon, DatePickerInput} from "carbon-components-react";
import PropTypes from "prop-types";

/**
 * DatePicker
 */
const DatePicker = ({placeholder, labelText, id, dateFormat, light, locale, maxDate, minDate, short, value, setProps}) => {
    return (
        <DatePickerCarbon id={id} dateFormat={dateFormat} light={light} locale={locale} maxDate={maxDate}
                          minDate={minDate} short={short} value={value} datePickerType='simple'
                          onChange={({value}) => setProps({value})}>
            <DatePickerInput id={id}
                             placeholder={placeholder}
                             labelText={labelText}/>)
        </DatePickerCarbon>
    )
}
DatePicker.propTypes = {
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
    /** Prop passed by Dash */
    setProps: PropTypes.func,
    /** Placeholder */
    placeholder: PropTypes.string.isRequired,
    /** Label text */
    labelText: PropTypes.string.isRequired
}
export default DatePicker;
