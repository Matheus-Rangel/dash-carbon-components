# AUTO GENERATED FILE - DO NOT EDIT

uIPage <- function(children=NULL, id=NULL, name=NULL, value=NULL) {
    
    props <- list(children=children, id=id, name=name, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'UIPage',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'id', 'name', 'value'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
