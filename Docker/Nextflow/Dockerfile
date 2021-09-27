FROM nextflow/nextflow
ADD nextflow.config /app/nextflow.config
ADD tutorial.nf /app/tutorial.nf
WORKDIR /app
ENTRYPOINT ["nextflow","tutorial.nf"]