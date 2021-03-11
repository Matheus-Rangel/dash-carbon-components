# AUTO GENERATED FILE - DO NOT EDIT

export button

"""
    button(;kwargs...)
    button(children::Any;kwargs...)
    button(children_maker::Function;kwargs...)


A Button component.

Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- `id` (String; required)
- `style` (Dict; optional)
- `className` (String; optional)
- `disabled` (Bool; optional)
- `kind` (String; optional)
- `size` (a value equal to: 'default', 'field', 'small', 'sm', 'lg', 'xl'; optional)
- `n_clicks` (Real; optional)
"""
function button(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :disabled, :kind, :size, :n_clicks]
        wild_props = Symbol[]
        return Component("button", "Button", "dash_carbon_components", available_props, wild_props; kwargs...)
end

button(children::Any; kwargs...) = button(;kwargs..., children = children)
button(children_maker::Function; kwargs...) = button(children_maker(); kwargs...)

