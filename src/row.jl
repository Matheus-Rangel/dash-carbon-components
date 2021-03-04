# AUTO GENERATED FILE - DO NOT EDIT

export row

"""
    row(;kwargs...)
    row(children::Any;kwargs...)
    row(children_maker::Function;kwargs...)


A Row component.
Grid Row
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- `style` (Dict; optional): The inline styles
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): The class of the element
"""
function row(; kwargs...)
        available_props = Symbol[:children, :style, :id, :className]
        wild_props = Symbol[]
        return Component("row", "Row", "dash_carbon_components", available_props, wild_props; kwargs...)
end

row(children::Any; kwargs...) = row(;kwargs..., children = children)
row(children_maker::Function; kwargs...) = row(children_maker(); kwargs...)

