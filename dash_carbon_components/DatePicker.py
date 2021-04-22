# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DatePicker(Component):
    """A DatePicker component.
DatePicker

Keyword arguments:
- allowInput (boolean; optional): flatpickr prop passthrough. Allows the user to enter a date directly
into the input field
- className (string; optional): The CSS class names.
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
- placeholder (string; required): Placeholder
- labelText (string; required): Label text"""
    @_explicitize_args
    def __init__(self, allowInput=Component.UNDEFINED, className=Component.UNDEFINED, id=Component.REQUIRED, dateFormat=Component.UNDEFINED, light=Component.UNDEFINED, locale=Component.UNDEFINED, maxDate=Component.UNDEFINED, minDate=Component.UNDEFINED, short=Component.UNDEFINED, value=Component.UNDEFINED, placeholder=Component.REQUIRED, labelText=Component.REQUIRED, **kwargs):
        self._prop_names = ['allowInput', 'className', 'id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'placeholder', 'labelText']
        self._type = 'DatePicker'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['allowInput', 'className', 'id', 'dateFormat', 'light', 'locale', 'maxDate', 'minDate', 'short', 'value', 'placeholder', 'labelText']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'placeholder', 'labelText']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(DatePicker, self).__init__(**args)
