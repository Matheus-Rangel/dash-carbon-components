# AUTO GENERATED FILE - DO NOT EDIT

uIPage <- function(children=NULL, name=NULL) {
    
    props <- list(children=children, name=name)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'UIPage',
        namespace = 'dash_carbon_components',
        propNames = c('children', 'name'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
