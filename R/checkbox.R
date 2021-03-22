# AUTO GENERATED FILE - DO NOT EDIT

checkbox <- function(id=NULL, label=NULL, disabled=NULL, value=NULL, title=NULL, style=NULL, className=NULL) {
    
    props <- list(id=id, label=label, disabled=disabled, value=value, title=title, style=style, className=className)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Checkbox',
        namespace = 'dash_carbon_components',
        propNames = c('id', 'label', 'disabled', 'value', 'title', 'style', 'className'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
