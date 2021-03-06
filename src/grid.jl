# AUTO GENERATED FILE - DO NOT EDIT

export grid

"""
    grid(;kwargs...)
    grid(children::Any;kwargs...)
    grid(children_maker::Function;kwargs...)


A Grid component.
Carbon Grid
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- `style` (Dict; optional): The inline styles
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): The class of the element
"""
function grid(; kwargs...)
        available_props = Symbol[:children, :style, :id, :className]
        wild_props = Symbol[]
        return Component("grid", "Grid", "dash_carbon_components", available_props, wild_props; kwargs...)
end

grid(children::Any; kwargs...) = grid(;kwargs..., children = children)
grid(children_maker::Function; kwargs...) = grid(children_maker(); kwargs...)

