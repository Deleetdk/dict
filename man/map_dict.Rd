% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dict.r
\name{map_dict}
\alias{compact_dict}
\alias{discard_dict}
\alias{keep_dict}
\alias{map_dict}
\title{Map, filter, collect on keys and values of the dictionary}
\usage{
map_dict(dict, .f, ...)

keep_dict(dict, .p, ...)

discard_dict(dict, .p, ...)

compact_dict(dict)
}
\arguments{
\item{dict}{A dictionary}

\item{.f}{A function, formula or character vector.}

\item{.p}{A predicate function returning a logical value.
If a function, it is called with two arguments, the key and the value.
If a formula, .x corresponds to the key and .y to the value.
If a character vector, it will return the values corresponding to the keys in the vector.}
}
\value{
For \code{map_dict}, a dictionary with the same keys as \code{dict}, and values
given by the return value of \code{.f}. For \code{keep_dict}, \code{discard_dict}, and
\code{compact_dict}, a dictionary containing the entries that passed the filter.
}
\description{
\code{map_dict} calls a function on each (key, value) pair and builds a dictionary from the transformed input
(see \link[purrr]{map} in package \code{purrr}).
\code{keep_dict} and \code{discard_dict} keep and discard elements based on the return value of the
predicate function (see \link[purrr]{keep} and \link[purrr]{discard} in package \code{purrr}).
\code{compact_dict} returns a dictionary with all the \code{NULL} values removed.
}

