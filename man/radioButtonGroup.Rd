% Auto-generated: do not edit by hand
\name{radioButtonGroup}

\alias{radioButtonGroup}

\title{RadioButtonGroup component}

\description{
Radio Group Component
}

\usage{
radioButtonGroup(legendText=NULL, radiosButtons=NULL, id=NULL, value=NULL,
labelPosition=NULL, orientation=NULL, disabled=NULL,
className=NULL)
}

\arguments{
\item{legendText}{A list of or a singular dash component, string or number. Provide a legend to the RadioButtonGroup input that you are
exposing to the user}

\item{radiosButtons}{List of lists containing elements 'label', 'value', 'id'.
those elements have the following types:
  - label (character; optional)
  - value (character; optional)
  - id (character; optional)s. The radios buttons inside this group}

\item{id}{Character. Specify a custom `id` for the radio group}

\item{value}{Character. The value selected}

\item{labelPosition}{A value equal to: 'left', 'right'. Provide where label text should be placed}

\item{orientation}{A value equal to: 'horizontal', 'vertical'. Provide where radio buttons should be placed}

\item{disabled}{Logical. Specify whether the group is disabled}

\item{className}{Character. Provide an optional className to be applied to the container node}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

