# AUTO GENERATED FILE - DO NOT EDIT

export button

"""
    button(;kwargs...)
    button(children::Any;kwargs...)
    button(children_maker::Function;kwargs...)


A Button component.
Carbon Button
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Specify the content of your Button
- `id` (String; required): The id of the button
- `style` (Dict; optional): jsx Style
- `className` (String; optional): Specify an optional className to be added to your Button
- `disabled` (Bool; optional): Specify whether the Button should be disabled, or not
- `dangerDescription` (String; optional): Specify the message read by screen readers for the danger button variant
- `href` (String; optional): Optionally specify an href for your Button to become an `<a>` element
- `isSelected` (Bool; optional): Specify whether the Button is currently selected
- `kind` (a value equal to: 'primary', 'secondary', 'danger', 'ghost', 'danger--primary', 'danger--ghost', 'danger--tertiary', 'tertiary'; required): Specify the kind of Button you want to create
- `role` (String; optional): Optional prop to specify the role of the Button
- `size` (a value equal to: 'default', 'field', 'small', 'sm', 'lg', 'xl'; optional): Specify the size of the button, from a list of available sizes.
For `default` buttons, this prop can remain unspecified.
- `tooltipAlignment` (a value equal to: 'start', 'center', 'end'; optional): Specify the alignment of the tooltip to the icon-only button.
Can be one of: start, center, or end.
- `tooltipPosition` (a value equal to: 'top', 'right', 'bottom', 'left'; optional): Specify the direction of the tooltip for icon-only buttons.
Can be either top, right, bottom, or left.
- `type` (a value equal to: 'button', 'reset', 'submit'; optional): Optional prop to specify the type of the Button
- `n_clicks` (Real; optional): Number of times this button has been clicked
"""
function button(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :disabled, :dangerDescription, :href, :isSelected, :kind, :role, :size, :tooltipAlignment, :tooltipPosition, :type, :n_clicks]
        wild_props = Symbol[]
        return Component("button", "Button", "dash_carbon_components", available_props, wild_props; kwargs...)
end

button(children::Any; kwargs...) = button(;kwargs..., children = children)
button(children_maker::Function; kwargs...) = button(children_maker(); kwargs...)

