# AUTO GENERATED FILE - DO NOT EDIT

datePickerInput <- function(id=NULL, disabled=NULL, hideLabel=NULL, iconDescription=NULL, invalid=NULL, invalidText=NULL, labelText=NULL, placeholder=NULL, size=NULL, warn=NULL, warnText=NULL, value=NULL, datePickerType=NULL) {
    
    props <- list(id=id, disabled=disabled, hideLabel=hideLabel, iconDescription=iconDescription, invalid=invalid, invalidText=invalidText, labelText=labelText, placeholder=placeholder, size=size, warn=warn, warnText=warnText, value=value, datePickerType=datePickerType)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DatePickerInput',
        namespace = 'dash_carbon_components',
        propNames = c('id', 'disabled', 'hideLabel', 'iconDescription', 'invalid', 'invalidText', 'labelText', 'placeholder', 'size', 'warn', 'warnText', 'value', 'datePickerType'),
        package = 'dashCarbonComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
