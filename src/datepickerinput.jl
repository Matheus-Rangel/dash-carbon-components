# AUTO GENERATED FILE - DO NOT EDIT

export datepickerinput

"""
    datepickerinput(;kwargs...)

A DatePickerInput component.

Keyword arguments:
- `id` (String; required): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `disabled` (Bool; optional): Specify whether or not the input should be disabled
- `hideLabel` (Bool; optional): Specify if the label should be hidden
- `iconDescription` (String; optional): The description of the calendar icon.
- `invalid` (Bool; optional): Specify whether or not the input should be invalid
- `invalidText` (String; optional): Specify the text to be rendered when the input is invalid
- `labelText` (String; required): Provide the text that will be read by a screen reader when visiting this control
- `placeholder` (String; optional): Specify the placeholder text
- `size` (a value equal to: 'sm', 'xl'; optional): Specify the size of the Date Picker Input. Currently supports either sm or xl as an option.
- `warn` (Bool; optional): Specify whether the control is currently in warning state
- `warnText` (String; optional): Provide the text that is displayed when the control is in warning state
- `value` (String; optional): Current value of the date
- `datePickerType` (a value equal to: 'range', 'single', 'simple'; optional): The type of the date picker
"""
function datepickerinput(; kwargs...)
        available_props = Symbol[:id, :disabled, :hideLabel, :iconDescription, :invalid, :invalidText, :labelText, :placeholder, :size, :warn, :warnText, :value, :datePickerType]
        wild_props = Symbol[]
        return Component("datepickerinput", "DatePickerInput", "dash_carbon_components", available_props, wild_props; kwargs...)
end

