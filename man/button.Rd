% Auto-generated: do not edit by hand
\name{button}

\alias{button}

\title{Button component}

\description{
Carbon Button
}

\usage{
button(children=NULL, id=NULL, style=NULL, className=NULL,
disabled=NULL, dangerDescription=NULL, href=NULL,
isSelected=NULL, kind=NULL, role=NULL, size=NULL,
tooltipAlignment=NULL, tooltipPosition=NULL, type=NULL,
n_clicks=NULL)
}

\arguments{
\item{children}{List of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number. Specify the content of your Button}

\item{id}{Character. The id of the button}

\item{style}{Named list. jsx Style}

\item{className}{Character. Specify an optional className to be added to your Button}

\item{disabled}{Logical. Specify whether the Button should be disabled, or not}

\item{dangerDescription}{Character. Specify the message read by screen readers for the danger button variant}

\item{href}{Character. Optionally specify an href for your Button to become an `<a>` element}

\item{isSelected}{Logical. Specify whether the Button is currently selected}

\item{kind}{A value equal to: 'primary', 'secondary', 'danger', 'ghost', 'danger--primary', 'danger--ghost', 'danger--tertiary', 'tertiary'. Specify the kind of Button you want to create}

\item{role}{Character. Optional prop to specify the role of the Button}

\item{size}{A value equal to: 'default', 'field', 'small', 'sm', 'lg', 'xl'. Specify the size of the button, from a list of available sizes.
For `default` buttons, this prop can remain unspecified.}

\item{tooltipAlignment}{A value equal to: 'start', 'center', 'end'. Specify the alignment of the tooltip to the icon-only button.
Can be one of: start, center, or end.}

\item{tooltipPosition}{A value equal to: 'top', 'right', 'bottom', 'left'. Specify the direction of the tooltip for icon-only buttons.
Can be either top, right, bottom, or left.}

\item{type}{A value equal to: 'button', 'reset', 'submit'. Optional prop to specify the type of the Button}

\item{n_clicks}{Numeric. Number of times this button has been clicked}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

