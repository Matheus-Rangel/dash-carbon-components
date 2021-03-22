# AUTO GENERATED FILE - DO NOT EDIT

export dropdown

"""
    dropdown(;kwargs...)

A Dropdown component.

Keyword arguments:
- `disabled` (Bool; optional): Disable the control
- `options` (optional): List of items. options has the following type: Array of String | lists containing elements 'label', 'value'.
Those elements have the following types:
  - `label` (String; optional)
  - `value` (Bool | Real | String | Dict | Array; optional)s
- `id` (String; required): Specify a custom `id`
- `inline` (Bool; optional): Specify whether you want the inline version of this control
- `invalid` (Bool; optional): Specify if the currently selected value is invalid.
- `invalidText` (String; optional): Message which is displayed if the value is invalid.
- `label` (a list of or a singular dash component, string or number; required): Generic `label` that will be used as the textual representation of what
this field is for
- `ariaLabel` (String; optional): 'aria-label' of the ListBox component.
- `value` (String; optional): In the case you want to control the dropdown selection entirely.
- `light` (Bool; optional): `true` to use the light version.
- `titleText` (String | a list of or a singular dash component, string or number; optional): Provide the title text that will be read by a screen reader when
visiting this control
- `helperText` (String | a list of or a singular dash component, string or number; optional): Provide helper text that is used alongside the control label for
additional help
- `style` (Dict; optional): Style of the component
"""
function dropdown(; kwargs...)
        available_props = Symbol[:disabled, :options, :id, :inline, :invalid, :invalidText, :label, :ariaLabel, :value, :light, :titleText, :helperText, :style]
        wild_props = Symbol[]
        return Component("dropdown", "Dropdown", "dash_carbon_components", available_props, wild_props; kwargs...)
end

