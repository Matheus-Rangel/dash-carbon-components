# AUTO GENERATED FILE - DO NOT EDIT

datePicker <- function(allowInput=NULL, className=NULL, id=NULL, dateFormat=NULL, light=NULL, locale=NULL, maxDate=NULL, minDate=NULL, short=NULL, value=NULL, placeholder=NULL, labelText=NULL) {
    
    props <- list(allowInput=allowInput, className=className, id=id, dateFormat=dateFormat, light=light, locale=locale, maxDate=maxDate, minDate=minDate, short=short, value=value, placeholder=placeholder, labelText=labelText)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DatePicker',
        namespace = 'dash_carbon_components',
        propNames = c('allowInput', 'className', 'id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'placeholder', 'labelText'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
