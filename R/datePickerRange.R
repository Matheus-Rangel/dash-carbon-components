# AUTO GENERATED FILE - DO NOT EDIT

datePickerRange <- function(id=NULL, dateFormat=NULL, light=NULL, locale=NULL, maxDate=NULL, minDate=NULL, short=NULL, value=NULL, startLabel=NULL, endLabel=NULL, placeholder=NULL) {
    
    props <- list(id=id, dateFormat=dateFormat, light=light, locale=locale, maxDate=maxDate, minDate=minDate, short=short, value=value, startLabel=startLabel, endLabel=endLabel, placeholder=placeholder)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DatePickerRange',
        namespace = 'dash_carbon_components',
        propNames = c('id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'startLabel', 'endLabel', 'placeholder'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
