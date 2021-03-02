# AUTO GENERATED FILE - DO NOT EDIT

export column

"""
    column(;kwargs...)
    column(children::Any;kwargs...)
    column(children_maker::Function;kwargs...)


A Column component.

Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional)
- `columnSizes` (Array of Strings; optional)
- `offsetSizes` (Array of Strings; optional)
"""
function column(; kwargs...)
        available_props = Symbol[:children, :columnSizes, :offsetSizes]
        wild_props = Symbol[]
        return Component("column", "Column", "dash_carbon_components", available_props, wild_props; kwargs...)
end

column(children::Any; kwargs...) = column(;kwargs..., children = children)
column(children_maker::Function; kwargs...) = column(children_maker(); kwargs...)

