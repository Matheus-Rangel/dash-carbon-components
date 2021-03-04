# AUTO GENERATED FILE - DO NOT EDIT

export column

"""
    column(;kwargs...)
    column(children::Any;kwargs...)
    column(children_maker::Function;kwargs...)


A Column component.
Row Column
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- `style` (Dict; optional): The inline styles
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): The class of the element
- `columnSizes` (Array of Strings; optional): The size of the column with the display size, sm-4, lg-16 ...
- `offsetSizes` (Array of Strings; optional): The size of the offset with the display size, lg-2 ...
"""
function column(; kwargs...)
        available_props = Symbol[:children, :style, :id, :className, :columnSizes, :offsetSizes]
        wild_props = Symbol[]
        return Component("column", "Column", "dash_carbon_components", available_props, wild_props; kwargs...)
end

column(children::Any; kwargs...) = column(;kwargs..., children = children)
column(children_maker::Function; kwargs...) = column(children_maker(); kwargs...)

