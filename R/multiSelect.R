# AUTO GENERATED FILE - DO NOT EDIT

multiSelect <- function(disabled=NULL, style=NULL, locale=NULL, light=NULL, selectionFeedback=NULL, direction=NULL, id=NULL, invalid=NULL, invalidText=NULL, options=NULL, label=NULL, size=NULL, titleText=NULL, value=NULL, filterable=NULL) {
    
    props <- list(disabled=disabled, style=style, locale=locale, light=light, selectionFeedback=selectionFeedback, direction=direction, id=id, invalid=invalid, invalidText=invalidText, options=options, label=label, size=size, titleText=titleText, value=value, filterable=filterable)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'MultiSelect',
        namespace = 'dash_carbon_components',
        propNames = c('disabled', 'style', 'locale', 'light', 'selectionFeedback', 'direction', 'id', 'invalid', 'invalidText', 'options', 'label', 'size', 'titleText', 'value', 'filterable'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
