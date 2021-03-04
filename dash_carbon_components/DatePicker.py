# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DatePicker(Component):
    """A DatePicker component.


Keyword arguments:
- id (string; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- dateFormat (string; optional): The date format.
- light (boolean; optional): True to use the light version.
- locale (string; optional): The language locale used to format the days of the week, months, and numbers.
The full list of supported locales can be found here https://github.com/flatpickr/flatpickr/tree/master/src/l10n
- maxDate (string; optional): The maximum date that a user can pick to.
- minDate (string; optional): The minimum date that a user can start picking from.
- short (boolean; optional): True to use the short version.
- value (string | list of strings; optional): The value of the date value provided to flatpickr
- datePickerType (a value equal to: 'range', 'single', 'simple'; optional): The type of the date picker
- inputs (dict; optional): inputs has the following type: list of dicts containing keys 'id', 'placeholder', 'labelText'.
Those keys have the following types:
  - id (string; optional)
  - placeholder (string; optional)
  - labelText (string; optional)"""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, dateFormat=Component.UNDEFINED, light=Component.UNDEFINED, locale=Component.UNDEFINED, maxDate=Component.UNDEFINED, minDate=Component.UNDEFINED, short=Component.UNDEFINED, value=Component.UNDEFINED, datePickerType=Component.UNDEFINED, inputs=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'datePickerType', 'inputs']
        self._type = 'DatePicker'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'datePickerType', 'inputs']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(DatePicker, self).__init__(**args)
