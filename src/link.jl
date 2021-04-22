# AUTO GENERATED FILE - DO NOT EDIT

export link

"""
    link(;kwargs...)
    link(children::Any;kwargs...)
    link(children_maker::Function;kwargs...)


A Link component.
Link component
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Provide the content for the Link
- `id` (String; optional): The id of the link
- `style` (Dict; optional): Inline styles
- `className` (String; optional): Provide a custom className to be applied to the containing `<a>` node
- `disabled` (Bool; optional): Specify if the control should be disabled, or not
- `inline` (Bool; optional): Specify whether you want the inline version of this control
- `size` (a value equal to: 'sm', 'md', 'lg'; optional): Specify the size of the Link. Currently supports either `sm`, 'md' (default) or 'lg` as an option.
- `n_clicks` (Real; optional): Number of times this link has been clicked
- `visited` (Bool; optional): Specify whether you want the link to receive visited styles after the link has been clicked
- `href` (String; optional): Provide the `href` attribute for the `<a>` node
"""
function link(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :disabled, :inline, :size, :n_clicks, :visited, :href]
        wild_props = Symbol[]
        return Component("link", "Link", "dash_carbon_components", available_props, wild_props; kwargs...)
end

link(children::Any; kwargs...) = link(;kwargs..., children = children)
link(children_maker::Function; kwargs...) = link(children_maker(); kwargs...)

