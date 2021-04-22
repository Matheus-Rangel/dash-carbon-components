% Auto-generated: do not edit by hand
\name{card}

\alias{card}

\title{Card component}

\description{
Card to display content
}

\usage{
card(children=NULL, style=NULL, id=NULL, className=NULL,
title=NULL, info=NULL, actions=NULL, action_click=NULL)
}

\arguments{
\item{children}{List of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number. The children of the element}

\item{style}{Named list. The inline styles}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. The class of the element}

\item{title}{Character. Title of the card}

\item{info}{Character. Additional information about the content of this card.}

\item{actions}{List of lists containing elements 'displayname', 'actionpropname'.
those elements have the following types:
  - displayname (character; optional)
  - actionpropname (character; optional)s. Actions available on the side menu, button clicks will be outputted to the actionPropName prop of this card}

\item{action_click}{Character. The action click value}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

