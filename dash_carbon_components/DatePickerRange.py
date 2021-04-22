# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DatePickerRange(Component):
    """A DatePickerRange component.
DatePickerRange, the id of the DateInputs will be id + '-start' and id + '-end'

Keyword arguments:
- id (string; required): The ID of this component, used to identify dash components
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
- startLabel (string; required): Start input label
- endLabel (string; required): End input label
- placeholder (string; required): placeholder"""
    @_explicitize_args
    def __init__(self, id=Component.REQUIRED, dateFormat=Component.UNDEFINED, light=Component.UNDEFINED, locale=Component.UNDEFINED, maxDate=Component.UNDEFINED, minDate=Component.UNDEFINED, short=Component.UNDEFINED, value=Component.UNDEFINED, startLabel=Component.REQUIRED, endLabel=Component.REQUIRED, placeholder=Component.REQUIRED, **kwargs):
        self._prop_names = ['id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'startLabel', 'endLabel', 'placeholder']
        self._type = 'DatePickerRange'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'startLabel', 'endLabel', 'placeholder']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'startLabel', 'endLabel', 'placeholder']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(DatePickerRange, self).__init__(**args)
