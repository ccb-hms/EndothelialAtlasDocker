FROM bioconductor/bioconductor_docker:RELEASE_3_12

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS=true

RUN Rscript -e "BiocManager::install(update = TRUE, ask = FALSE, Ncpus=2)"
RUN Rscript -e "devtools::install('.', dependencies = TRUE, repos = BiocManager::repositories(), Ncpus=2)"
