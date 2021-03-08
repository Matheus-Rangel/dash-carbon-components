# AUTO GENERATED FILE - DO NOT EDIT

tab <- function(children=NULL, className=NULL, disabled=NULL, label=NULL, role=NULL, value=NULL) {
    
    props <- list(children=children, className=className, disabled=disabled, label=label, role=role, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tab',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'className', 'disabled', 'label', 'role', 'value'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
