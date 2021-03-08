# AUTO GENERATED FILE - DO NOT EDIT

tabs <- function(children=NULL, ariaLabel=NULL, className=NULL, hidden=NULL, role=NULL, onClick=NULL, onKeyDown=NULL, triggerHref=NULL, selected=NULL, iconDescription=NULL, tabContentClassName=NULL, id=NULL, headerOffsets=NULL, headerSizes=NULL, value=NULL) {
    
    props <- list(children=children, ariaLabel=ariaLabel, className=className, hidden=hidden, role=role, onClick=onClick, onKeyDown=onKeyDown, triggerHref=triggerHref, selected=selected, iconDescription=iconDescription, tabContentClassName=tabContentClassName, id=id, headerOffsets=headerOffsets, headerSizes=headerSizes, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tabs',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'ariaLabel', 'className', 'hidden', 'role', 'onClick', 'onKeyDown', 'triggerHref', 'selected', 'iconDescription', 'tabContentClassName', 'id', 'headerOffsets', 'headerSizes', 'value'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
