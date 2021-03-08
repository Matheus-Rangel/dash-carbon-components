# AUTO GENERATED FILE - DO NOT EDIT

multiSelect <- function(disabled=NULL, locale=NULL, light=NULL, selectionFeedback=NULL, direction=NULL, id=NULL, invalid=NULL, invalidText=NULL, items=NULL, label=NULL, size=NULL, titleText=NULL, selectedItems=NULL) {
    
    props <- list(disabled=disabled, locale=locale, light=light, selectionFeedback=selectionFeedback, direction=direction, id=id, invalid=invalid, invalidText=invalidText, items=items, label=label, size=size, titleText=titleText, selectedItems=selectedItems)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'MultiSelect',
        namespace = 'dash_carbon_components',
        propNames = c('disabled', 'locale', 'light', 'selectionFeedback', 'direction', 'id', 'invalid', 'invalidText', 'items', 'label', 'size', 'titleText', 'selectedItems'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
