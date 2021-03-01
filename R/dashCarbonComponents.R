# AUTO GENERATED FILE - DO NOT EDIT

dashCarbonComponents <- function(id=NULL, label=NULL, value=NULL) {
    
    props <- list(id=id, label=label, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashCarbonComponents',
        namespace = 'dash_carbon_components',
        propNames = c('id', 'label', 'value'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
