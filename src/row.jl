# AUTO GENERATED FILE - DO NOT EDIT

export row

"""
    row(;kwargs...)
    row(children::Any;kwargs...)
    row(children_maker::Function;kwargs...)


A Row component.

Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional)
"""
function row(; kwargs...)
        available_props = Symbol[:children]
        wild_props = Symbol[]
        return Component("row", "Row", "dash_carbon_components", available_props, wild_props; kwargs...)
end

row(children::Any; kwargs...) = row(;kwargs..., children = children)
row(children_maker::Function; kwargs...) = row(children_maker(); kwargs...)

