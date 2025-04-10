% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/goplot.R
\name{goplot}
\alias{goplot}
\alias{goplot,enrichResult-method}
\alias{goplot,gseaResult-method}
\title{goplot}
\usage{
goplot(
  x,
  showCategory = 10,
  color = "p.adjust",
  layout = "sugiyama",
  geom = "text",
  ...
)

\S4method{goplot}{enrichResult}(
  x,
  showCategory = 10,
  color = "p.adjust",
  layout = igraph::layout_with_sugiyama,
  geom = "text",
  ...
)

\S4method{goplot}{gseaResult}(
  x,
  showCategory = 10,
  color = "p.adjust",
  layout = igraph::layout_with_sugiyama,
  geom = "text",
  ...
)
}
\arguments{
\item{x}{enrichment result.}

\item{showCategory}{number of enriched terms to display}

\item{color}{variable that used to color enriched terms, e.g. pvalue,
p.adjust or qvalue}

\item{layout}{layout of the map}

\item{geom}{label geom, one of 'label' or 'text'}

\item{...}{additional parameter}
}
\value{
ggplot object
}
\description{
plot induced GO DAG of significant terms
}
\examples{
\dontrun{
	library(clusterProfiler)
  data(geneList, package = "DOSE")
	de <- names(geneList)[1:100]
	yy <- enrichGO(de, 'org.Hs.eg.db', ont="BP", pvalueCutoff=0.01)
    goplot(yy)
    goplot(yy, showCategory = 5)
}
}
\author{
Guangchuang Yu
}
