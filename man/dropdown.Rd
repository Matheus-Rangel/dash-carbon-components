% Auto-generated: do not edit by hand
\name{dropdown}

\alias{dropdown}

\title{Dropdown component}

\description{

}

\usage{
dropdown(disabled=NULL, options=NULL, id=NULL, inline=NULL,
invalid=NULL, invalidText=NULL, label=NULL,
translateWithId=NULL, ariaLabel=NULL, value=NULL,
light=NULL, titleText=NULL, helperText=NULL, style=NULL)
}

\arguments{
\item{disabled}{Logical. Disable the control}

\item{options}{List of character | lists containing elements 'label', 'value'.
those elements have the following types:
  - label (character; optional)
  - value (logical | numeric | character | named list | unnamed list; optional)s. List of items}

\item{id}{Character. Specify a custom `id`}

\item{inline}{Logical. Specify whether you want the inline version of this control}

\item{invalid}{Logical. Specify if the currently selected value is invalid.}

\item{invalidText}{Character. Message which is displayed if the value is invalid.}

\item{label}{A list of or a singular dash component, string or number. Generic `label` that will be used as the textual representation of what
this field is for}

\item{translateWithId}{Callback function for translating ListBoxMenuIcon SVG title}

\item{ariaLabel}{Character. 'aria-label' of the ListBox component.}

\item{value}{Character. In the case you want to control the dropdown selection entirely.}

\item{light}{Logical. `true` to use the light version.}

\item{titleText}{Character | a list of or a singular dash component, string or number. Provide the title text that will be read by a screen reader when
visiting this control}

\item{helperText}{Character | a list of or a singular dash component, string or number. Provide helper text that is used alongside the control label for
additional help}

\item{style}{Named list. Style of the component}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

