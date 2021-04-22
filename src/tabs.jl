# AUTO GENERATED FILE - DO NOT EDIT

export tabs

"""
    tabs(;kwargs...)
    tabs(children::Any;kwargs...)
    tabs(children_maker::Function;kwargs...)


A Tabs component.
Tabs
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Pass in a collection of <Tab> children to be rendered depending on the
currently selected tab
- `ariaLabel` (String; optional): Specify the text to be read by screen-readers when visiting the <Tabs>
component
- `style` (Dict; optional): Specify the inline style
- `className` (String; optional): Provide a className that is applied to the root <nav> component for the
<Tabs>
- `hidden` (Bool; optional): Specify whether the Tab content is hidden
- `role` (String; optional): By default, this value is "navigation". You can also provide an alternate
role if it makes sense from the accessibility-side
- `triggerHref` (String; optional): Provide a string that represents the `href` for the triggered <Tab>
- `selected` (Real; optional): Optionally provide an index for the currently selected <Tab>
- `iconDescription` (String; optional): Provide a description that is read out when a user visits the caret icon
for the dropdown menu of items
- `tabContentClassName` (String; optional): Provide a className that is applied to the <TabContent> components
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `headerOffsets` (Array of Strings; optional): Number of columns of left offset the header will have
- `headerSizes` (Array of Strings; optional): Number of columns the header will have
- `value` (String; optional): Value of the selected tab
"""
function tabs(; kwargs...)
        available_props = Symbol[:children, :ariaLabel, :style, :className, :hidden, :role, :triggerHref, :selected, :iconDescription, :tabContentClassName, :id, :headerOffsets, :headerSizes, :value]
        wild_props = Symbol[]
        return Component("tabs", "Tabs", "dash_carbon_components", available_props, wild_props; kwargs...)
end

tabs(children::Any; kwargs...) = tabs(;kwargs..., children = children)
tabs(children_maker::Function; kwargs...) = tabs(children_maker(); kwargs...)

