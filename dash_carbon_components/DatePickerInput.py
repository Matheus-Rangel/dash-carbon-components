# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DatePickerInput(Component):
    """A DatePickerInput component.


Keyword arguments:
- id (string; required): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- disabled (boolean; optional): Specify whether or not the input should be disabled
- hideLabel (boolean; optional): Specify if the label should be hidden
- iconDescription (string; optional): The description of the calendar icon.
- invalid (boolean; optional): Specify whether or not the input should be invalid
- invalidText (string; optional): Specify the text to be rendered when the input is invalid
- labelText (string; required): Provide the text that will be read by a screen reader when visiting this control
- placeholder (string; optional): Specify the placeholder text
- size (a value equal to: 'sm', 'xl'; optional): Specify the size of the Date Picker Input. Currently supports either sm or xl as an option.
- warn (boolean; optional): Specify whether the control is currently in warning state
- warnText (string; optional): Provide the text that is displayed when the control is in warning state
- value (string; optional): Current value of the date
- datePickerType (a value equal to: 'range', 'single', 'simple'; optional): The type of the date picker"""
    @_explicitize_args
    def __init__(self, id=Component.REQUIRED, disabled=Component.UNDEFINED, hideLabel=Component.UNDEFINED, iconDescription=Component.UNDEFINED, invalid=Component.UNDEFINED, invalidText=Component.UNDEFINED, labelText=Component.REQUIRED, placeholder=Component.UNDEFINED, size=Component.UNDEFINED, warn=Component.UNDEFINED, warnText=Component.UNDEFINED, value=Component.UNDEFINED, datePickerType=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'disabled', 'hideLabel', 'iconDescription', 'invalid', 'invalidText', 'labelText', 'placeholder', 'size', 'warn', 'warnText', 'value', 'datePickerType']
        self._type = 'DatePickerInput'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'disabled', 'hideLabel', 'iconDescription', 'invalid', 'invalidText', 'labelText', 'placeholder', 'size', 'warn', 'warnText', 'value', 'datePickerType']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'labelText']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(DatePickerInput, self).__init__(**args)
