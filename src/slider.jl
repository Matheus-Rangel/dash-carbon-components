# AUTO GENERATED FILE - DO NOT EDIT

export slider

"""
    slider(;kwargs...)

A Slider component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `id` (String; optional): Slider id
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

