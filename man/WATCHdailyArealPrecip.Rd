% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WATCHdailyArealPrecip.R
\name{WATCHdailyArealPrecip}
\alias{WATCHdailyArealPrecip}
\title{Calculates daily WATCH areal precipitation}
\usage{
WATCHdailyArealPrecip(monthlyPrecip, timezone)
}
\arguments{
\item{monthlyPrecip}{All WATCH precipitation for a month, as returned by \code{WATCHgetWFDarealPrecip}.}

\item{timezone}{Required. The name of the timezone of the data as a character string. This should be the timezone of your data, but omitting daylight savings time. Note that the timezone code is specific to your OS. To avoid problems, you should use a timezone without daylight savings time. Under Linux, you can use \option{CST} and \option{MST} for Central Standard or Mountain Standard time, respectively. Under Windows or OSX, you can use \option{etc/GMT+6} or \option{etc/GMT+7} for Central Standard and Mountain Standard time. DO NOT use \option{America/Regina} as the time zone, as it includes historical changes between standard and daylight savings time.}
}
\value{
If successful, returns a data frame consisting if the date,longitude, latitude, and total precipitation (in mm) for each point. If unsuccessful, returns \code{FALSE}.
}
\description{
Calculates daily WATCH areal precipitation
}
\details{
Calculates the daily total WATCH precipitation for all locations in a region.
}
\examples{
\dontrun{
daily_rain <- WATCHdailyArealPrecip(monthly_rain, 'CST')}
}
\author{
Kevin Shook
}
