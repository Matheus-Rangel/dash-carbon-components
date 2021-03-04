% Auto-generated: do not edit by hand
\name{datePicker}

\alias{datePicker}

\title{DatePicker component}

\description{

}

\usage{
datePicker(id=NULL, dateFormat=NULL, light=NULL, locale=NULL,
maxDate=NULL, minDate=NULL, short=NULL, value=NULL,
datePickerType=NULL, inputs=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{dateFormat}{Character. The date format.}

\item{light}{Logical. True to use the light version.}

\item{locale}{Character. The language locale used to format the days of the week, months, and numbers.
The full list of supported locales can be found here https://github.com/flatpickr/flatpickr/tree/master/src/l10n}

\item{maxDate}{Character. The maximum date that a user can pick to.}

\item{minDate}{Character. The minimum date that a user can start picking from.}

\item{short}{Logical. True to use the short version.}

\item{value}{Character | list of characters. The value of the date value provided to flatpickr}

\item{datePickerType}{A value equal to: 'range', 'single', 'simple'. The type of the date picker}

\item{inputs}{List of lists containing elements 'id', 'placeholder', 'labeltext'.
those elements have the following types:
  - id (character; optional)
  - placeholder (character; optional)
  - labeltext (character; optional)s. }
}

\value{named list of JSON elements corresponding to React.js properties and their values}

