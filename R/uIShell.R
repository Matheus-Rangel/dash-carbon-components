# AUTO GENERATED FILE - DO NOT EDIT

uIShell <- function(children=NULL, id=NULL, value=NULL, name=NULL) {
    
    props <- list(children=children, id=id, value=value, name=name)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'UIShell',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'id', 'value', 'name'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
