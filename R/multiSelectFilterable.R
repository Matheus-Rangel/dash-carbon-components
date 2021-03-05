# AUTO GENERATED FILE - DO NOT EDIT

multiSelectFilterable <- function(disabled=NULL, locale=NULL, initialSelectedItems=NULL, light=NULL, selectionFeedback=NULL, direction=NULL, id=NULL, invalid=NULL, invalidText=NULL, items=NULL, label=NULL, size=NULL, titleText=NULL) {
    
    props <- list(disabled=disabled, locale=locale, initialSelectedItems=initialSelectedItems, light=light, selectionFeedback=selectionFeedback, direction=direction, id=id, invalid=invalid, invalidText=invalidText, items=items, label=label, size=size, titleText=titleText)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'MultiSelectFilterable',
        namespace = 'dash_carbon_components',
        propNames = c('disabled', 'locale', 'initialSelectedItems', 'light', 'selectionFeedback', 'direction', 'id', 'invalid', 'invalidText', 'items', 'label', 'size', 'titleText'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
