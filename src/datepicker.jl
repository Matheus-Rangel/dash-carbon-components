# AUTO GENERATED FILE - DO NOT EDIT

export datepicker

"""
    datepicker(;kwargs...)

A DatePicker component.
DatePicker
Keyword arguments:
- `allowInput` (Bool; optional): flatpickr prop passthrough. Allows the user to enter a date directly
into the input field
- `className` (String; optional): The CSS class names.
- `id` (String; required): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `dateFormat` (String; optional): The date format.
- `light` (Bool; optional): True to use the light version.
- `locale` (String; optional): The language locale used to format the days of the week, months, and numbers.
The full list of supported locales can be found here https://github.com/flatpickr/flatpickr/tree/master/src/l10n
- `maxDate` (String; optional): The maximum date that a user can pick to.
- `minDate` (String; optional): The minimum date that a user can start picking from.
- `short` (Bool; optional): True to use the short version.
- `value` (String | Array of Strings; optional): The value of the date value provided to flatpickr
- `placeholder` (String; required): Placeholder
- `labelText` (String; required): Label text
"""
function datepicker(; kwargs...)
        available_props = Symbol[:allowInput, :className, :id, :dateFormat, :light, :locale, :maxDate, :minDate, :short, :value, :placeholder, :labelText]
        wild_props = Symbol[]
        return Component("datepicker", "DatePicker", "dash_carbon_components", available_props, wild_props; kwargs...)
end

