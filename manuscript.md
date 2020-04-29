---
author-meta:
- Trang T. Le
- Jason H. Moore
bibliography:
- content/manual-references.json
date-meta: '2020-04-29'
header-includes: '<!--

  Manubot generated metadata rendered from header-includes-template.html.

  Suggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html

  -->

  <meta name="dc.format" content="text/html" />

  <meta name="dc.title" content="treeheatr: an R package for interpretable decision tree visualizations" />

  <meta name="citation_title" content="treeheatr: an R package for interpretable decision tree visualizations" />

  <meta property="og:title" content="treeheatr: an R package for interpretable decision tree visualizations" />

  <meta property="twitter:title" content="treeheatr: an R package for interpretable decision tree visualizations" />

  <meta name="dc.date" content="2020-04-29" />

  <meta name="citation_publication_date" content="2020-04-29" />

  <meta name="dc.language" content="en-US" />

  <meta name="citation_language" content="en-US" />

  <meta name="dc.relation.ispartof" content="Manubot" />

  <meta name="dc.publisher" content="Manubot" />

  <meta name="citation_journal_title" content="Manubot" />

  <meta name="citation_technical_report_institution" content="Manubot" />

  <meta name="citation_author" content="Trang T. Le" />

  <meta name="citation_author_institution" content="Department of Biostatistics, Epidemiology and Informatics, Institute for Biomedical Informatics, University of Pennsylvania, Philadelphia, PA 19104" />

  <meta name="citation_author_orcid" content="0000-0003-3737-6565" />

  <meta name="twitter:creator" content="@trang1618" />

  <meta name="citation_author" content="Jason H. Moore" />

  <meta name="citation_author_institution" content="Department of Biostatistics, Epidemiology and Informatics, Institute for Biomedical Informatics, University of Pennsylvania, Philadelphia, PA 19104" />

  <meta name="citation_author_orcid" content="0000-0002-5015-1099" />

  <meta name="twitter:creator" content="@moorejh" />

  <link rel="canonical" href="https://trang1618.github.io/treeheatr-manuscript/" />

  <meta property="og:url" content="https://trang1618.github.io/treeheatr-manuscript/" />

  <meta property="twitter:url" content="https://trang1618.github.io/treeheatr-manuscript/" />

  <meta name="citation_fulltext_html_url" content="https://trang1618.github.io/treeheatr-manuscript/" />

  <meta name="citation_pdf_url" content="https://trang1618.github.io/treeheatr-manuscript/manuscript.pdf" />

  <link rel="alternate" type="application/pdf" href="https://trang1618.github.io/treeheatr-manuscript/manuscript.pdf" />

  <link rel="alternate" type="text/html" href="https://trang1618.github.io/treeheatr-manuscript/v/8dd393fb810190c7ef4e71a8f9784fb29e338bee/" />

  <meta name="manubot_html_url_versioned" content="https://trang1618.github.io/treeheatr-manuscript/v/8dd393fb810190c7ef4e71a8f9784fb29e338bee/" />

  <meta name="manubot_pdf_url_versioned" content="https://trang1618.github.io/treeheatr-manuscript/v/8dd393fb810190c7ef4e71a8f9784fb29e338bee/manuscript.pdf" />

  <meta property="og:type" content="article" />

  <meta property="twitter:card" content="summary_large_image" />

  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />

  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />

  <meta name="theme-color" content="#ad1457" />

  <!-- end Manubot generated metadata -->'
keywords:
- machine learning
- decision trees
- heatmap
- visualization
- interpretability
lang: en-US
manubot-clear-requests-cache: false
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
title: 'treeheatr: an R package for interpretable decision tree visualizations'
...






<small><em>
This manuscript
([permalink](https://trang1618.github.io/treeheatr-manuscript/v/8dd393fb810190c7ef4e71a8f9784fb29e338bee/))
was automatically generated
from [trang1618/treeheatr-manuscript@8dd393f](https://github.com/trang1618/treeheatr-manuscript/tree/8dd393fb810190c7ef4e71a8f9784fb29e338bee)
on April 29, 2020.
</em></small>

## Authors



+ **Trang T. Le**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [0000-0003-3737-6565](https://orcid.org/0000-0003-3737-6565)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [trang1618](https://github.com/trang1618)
    · ![Twitter icon](images/twitter.svg){.inline_icon}
    [trang1618](https://twitter.com/trang1618)<br>
  <small>
     Department of Biostatistics, Epidemiology and Informatics, Institute for Biomedical Informatics, University of Pennsylvania, Philadelphia, PA 19104
  </small>

+ **Jason H. Moore**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [0000-0002-5015-1099](https://orcid.org/0000-0002-5015-1099)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [EpistasisLab](https://github.com/EpistasisLab)
    · ![Twitter icon](images/twitter.svg){.inline_icon}
    [moorejh](https://twitter.com/moorejh)<br>
  <small>
     Department of Biostatistics, Epidemiology and Informatics, Institute for Biomedical Informatics, University of Pennsylvania, Philadelphia, PA 19104
     · Funded by National Institutes of Health Grant Nos. [LM010098, LM012601, AI116794]
  </small>



## Abstract {.page_break_before}

### Summary
*treeheatr* is an R package for creating interpretable decision tree visualizations with the data represented as heatmaps at the tree's terminal nodes.
Going beyond the if-then step-by-step logic of a decision tree, the inclusion of a heatmap offers a broader view of the classification or regression problem and provides meaningful clarification of different node splits in the tree.
Working harmoniously with other packages, *treeheatr* empowers the user with refined controls over the statistical threshold and presentation of the tree and heatmap.

### Availability and implementation
The *treeheatr* package is freely available under the permissive [MIT license](https://opensource.org/licenses/MIT) at <https://trang1618.github.io/treeheatr>.
It comes with a detailed vignette that is automatically built with continuous integration.

### Contact
<ttle@pennmedicine.upenn.edu>

### Supplementary information

## Introduction

Tree-based algorithms such as random forests and gradient boosted trees are widely used techniques that comprise an important section of supervised machine learning.
Decision trees are primitive constituents of many important  including .
Visualizing and intepreting their building blocks, the single decision trees, are the first steps toward understanding these more complex tree-based structures.
Nonetheless, existing visualization softwares frequently treat all nodes similarly, leaving limited options for improving visualization at the leaf nodes.
Currently, at leaf nodes, state-of-the-art libraries such as Python's [dtreeviz](https://github.com/parrt/dtreeviz) draw pie charts.

In a visualization, it is difficult to find the sweet spot on the spectrum from enhancing understanding to overloading information. 

an opportunity for the data to be shown at the leaf nodes as a heatmap.

heatmap: complimentary of histogram at non-leaf nodes.
correlation: implied from clustering


## Materials and methods



## treeheatr: a simple example

This example visualizes the conditional inference tree model built to predict whether or not a patient has diabetes from a dataset provided by the National Institute of Diabetes and Digestive and Kidney Diseases [@pmcid:PMC2245318].
This dataset of female patients at least 21 years old of Pima Indian heritage near Phoenix, Arizona was downloaded from [Kaggle](https://www.kaggle.com/uciml/pima-indians-diabetes-database) and has eight features: age, number of times pregnant, plasma glucose concentration, diastolic blood pressure, skin fold thickness, 2-hour serum insulin, body mass index and diabetes pedigree function.
Detailed descriptions of these variables and data source can be found on the Kaggle page.

The following lines of code computes and visualizes the conditional decision tree along with the heatmap containing features that are important for building this model (Fig. @fig:example):

```
heat_tree(
  data = diabetes,
  target_lab = 'Diabetes status',
  label_map = c(`0` = 'Negative', `1` = 'Positive')
)
```

The heat_tree() function takes a data frame, a character string indicating the column name associated with the outcome/phenotype (e.g., Diabetes status) and other optional arguments such as the mapping of the outcome label. 

![A decision tree-heatmap for predicting whether an individual has diabetes.](images/diabetes.png){#fig:example}




## Conclusion

In this paper, we presented the new type of integrated visualization of decision trees and heatmaps, which provides a comprehensive data overview as well as model interpretation.
We demonstrated that [...]
The visualization is implemented in an easily installed package with a detailed vignette.
Released as open source software, {treeheatr} hopes to receive contribution from other developers.

Future works on *treeheatr* include enhancements such as supporting heatmap visualization of a holdout set and highlighting the tree branches that point to a specific holdout sample.

## Acknowledgements

The *treeheatr* package was made possible by leveraging integral R packages including *ggplot2* [@isbn:978-0387981406], *partykit* [@url:http://jmlr.org/papers/v16/hothorn15a.html], *ggparty* [@url:https://github.com/martin-borkovec/ggparty] and many others.
We would also like to thank Daniel Himmelstein for his helpful comments on the continuous integration configuration.

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
