# AUTO GENERATED FILE - DO NOT EDIT

export numberinput

"""
    numberinput(;kwargs...)

A NumberInput component.

Keyword arguments:
- `allowEmpty` (Bool; optional): `true` to allow empty string.
- `style` (Dict; optional): style of the input
- `ariaLabel` (String; optional): Provide a description that would be used to best describe the use case of the NumberInput component
- `className` (String; optional): Specify an optional className to be applied to the wrapper node
- `defaultValue` (Real | String; optional): Optional starting value for uncontrolled state
- `disabled` (Bool; optional): Specify if the control should be disabled, or not
- `helperText` (String; optional): Provide text that is used alongside the control label for additional help
- `hideLabel` (Bool; optional): Specify whether you want the underlying label to be visually hidden
- `iconDescription` (String; optional): Provide a description for up/down icons that can be read by screen readers
- `id` (String; required): Specify a custom `id` for the input
- `invalid` (Bool; optional): Specify if the currently value is invalid.
- `invalidText` (String; optional): Message which is displayed if the value is invalid.
- `label` (String; optional): Generic `label` that will be used as the textual representation of what
this field is for
- `light` (Bool; optional): `true` to use the light version.
- `max` (Real; optional): The maximum value.
- `min` (Real; optional): The minimum value.
- `readOnly` (Bool; optional): Specify if the component should be read-only
- `size` (a value equal to: 'sm', 'xl'; optional): Specify the size of the Number Input. Currently supports either `sm` or `xl` as an option.
- `step` (Real; optional): Specify how much the valus should increase/decrease upon clicking on up/down button
- `value` (Real | String; optional): Specify the value of the input
- `warn` (Bool; optional): Specify whether the control is currently in warning state
- `warnText` (String; optional): Provide the text that is displayed when the control is in warning state
"""
function numberinput(; kwargs...)
        available_props = Symbol[:allowEmpty, :style, :ariaLabel, :className, :defaultValue, :disabled, :helperText, :hideLabel, :iconDescription, :id, :invalid, :invalidText, :label, :light, :max, :min, :readOnly, :size, :step, :value, :warn, :warnText]
        wild_props = Symbol[]
        return Component("numberinput", "NumberInput", "dash_carbon_components", available_props, wild_props; kwargs...)
end

