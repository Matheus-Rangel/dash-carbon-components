# AUTO GENERATED FILE - DO NOT EDIT

button <- function(children=NULL, id=NULL, style=NULL, className=NULL, disabled=NULL, dangerDescription=NULL, href=NULL, isSelected=NULL, kind=NULL, role=NULL, size=NULL, tooltipAlignment=NULL, tooltipPosition=NULL, type=NULL, n_clicks=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, disabled=disabled, dangerDescription=dangerDescription, href=href, isSelected=isSelected, kind=kind, role=role, size=size, tooltipAlignment=tooltipAlignment, tooltipPosition=tooltipPosition, type=type, n_clicks=n_clicks)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Button',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'id', 'style', 'className', 'disabled', 'dangerDescription', 'href', 'isSelected', 'kind', 'role', 'size', 'tooltipAlignment', 'tooltipPosition', 'type', 'n_clicks'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
