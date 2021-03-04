# AUTO GENERATED FILE - DO NOT EDIT

export slider

"""
    slider(;kwargs...)

A Slider component.
Slider
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `name` (String; optional): Form item name
- `inputType` (String; optional): The form element type
- `ariaLabelInput` (String; optional): The ARIA label for the <input>
- `labelText` (String; required): Label text
- `disabled` (Bool; optional): Disabled
- `light` (Bool; optional): Light variant
- `hideTextInput` (Bool; optional): Without text input
- `value` (Real; required): The value
- `min` (Real; required): The minimum value
- `max` (Real; required): The maximum value
- `step` (Real; required): The step
- `stepMultiplier` (Real; optional): The step factor for Shift+arrow keys
"""
function slider(; kwargs...)
        available_props = Symbol[:id, :name, :inputType, :ariaLabelInput, :labelText, :disabled, :light, :hideTextInput, :value, :min, :max, :step, :stepMultiplier]
        wild_props = Symbol[]
        return Component("slider", "Slider", "dash_carbon_components", available_props, wild_props; kwargs...)
end

