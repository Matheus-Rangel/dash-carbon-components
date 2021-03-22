# AUTO GENERATED FILE - DO NOT EDIT

export link

"""
    link(;kwargs...)
    link(children::Any;kwargs...)
    link(children_maker::Function;kwargs...)


A Link component.

Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional)
- `id` (String; optional)
- `style` (Dict; optional)
- `className` (String; optional)
- `disabled` (Bool; optional)
- `inline` (Bool; optional)
- `size` (a value equal to: 'sm', 'lg'; optional)
- `n_clicks` (Real; optional)
- `visited` (Bool; optional)
"""
function link(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :disabled, :inline, :size, :n_clicks, :visited]
        wild_props = Symbol[]
        return Component("link", "Link", "dash_carbon_components", available_props, wild_props; kwargs...)
end

link(children::Any; kwargs...) = link(;kwargs..., children = children)
link(children_maker::Function; kwargs...) = link(children_maker(); kwargs...)

