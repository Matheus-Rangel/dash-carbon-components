# AUTO GENERATED FILE - DO NOT EDIT

export tab

"""
    tab(;kwargs...)
    tab(children::Any;kwargs...)
    tab(children_maker::Function;kwargs...)


A Tab component.
Tab component
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Tab content
- `className` (String; optional): Specify an optional className to be added to your Tab
- `disabled` (Bool; optional): Whether your Tab is disabled.
- `label` (String; required): Provide the contents of your Tab
- `role` (String; optional): Provide an accessibility role for your Tab
- `value` (String; optional): Value of the tab
"""
function tab(; kwargs...)
        available_props = Symbol[:children, :className, :disabled, :label, :role, :value]
        wild_props = Symbol[]
        return Component("tab", "Tab", "dash_carbon_components", available_props, wild_props; kwargs...)
end

tab(children::Any; kwargs...) = tab(;kwargs..., children = children)
tab(children_maker::Function; kwargs...) = tab(children_maker(); kwargs...)

