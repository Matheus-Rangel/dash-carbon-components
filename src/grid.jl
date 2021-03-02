# AUTO GENERATED FILE - DO NOT EDIT

export grid

"""
    grid(;kwargs...)
    grid(children::Any;kwargs...)
    grid(children_maker::Function;kwargs...)


A Grid component.

Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional)
"""
function grid(; kwargs...)
        available_props = Symbol[:children]
        wild_props = Symbol[]
        return Component("grid", "Grid", "dash_carbon_components", available_props, wild_props; kwargs...)
end

grid(children::Any; kwargs...) = grid(;kwargs..., children = children)
grid(children_maker::Function; kwargs...) = grid(children_maker(); kwargs...)

