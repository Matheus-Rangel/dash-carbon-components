import React from 'react'
import {DatePicker as DatePickerCarbon, DatePickerInput} from "carbon-components-react";
import PropTypes from "prop-types";

const DatePicker = ({inputs, id, dateFormat, light, locale, maxDate, minDate, short, value, datePickerType, setProps}) => {
    return (
        <DatePickerCarbon id={id} dateFormat={dateFormat} light={light} locale={locale} maxDate={maxDate}
                          minDate={minDate} short={short} value={value} datePickerType={datePickerType}
                          onChange={({value}) => setProps({value})}>
            {inputs.map(input =>
                <DatePickerInput key={input.id}
                                 id={input.id}
                                 placeholder={input.placeholder}
                                 labelText={input.labelText}/>)
            }
        </DatePickerCarbon>
    )
}
DatePicker.propTypes = {
    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string,
    /**
     The children of the element
     */
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
     * The type of the date picker
     */
    datePickerType: PropTypes.oneOf(['range', 'single', 'simple']),
    /** Prop passed by Dash */
    setProps: PropTypes.func,
    inputs: PropTypes.arrayOf(PropTypes.shape({
        id: PropTypes.string,
        placeholder: PropTypes.string,
        labelText: PropTypes.string
    })).isRequired
}
DatePicker.defaultProps = {
    inputs: []
};
export default DatePicker;
