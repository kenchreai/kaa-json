# Start server to implement relative context uri dereferencing. Will fail if already running.
python -m SimpleHTTPServer &

/Users/sfsh/Documents/apache-jena-2.12.0/bin/arq \
--data http://localhost:8000/kaa-kaa.jsonld \
--data http://localhost:8000/kaa-excavation-units.jsonld \
--data http://localhost:8000/kaa-ontology.jsonld \
--data http://localhost:8000/kaa-typology.jsonld \
--data http://localhost:8000/kaa-inventoried-objects.jsonld \
--data http://localhost:8000/kth-containers.jsonld \
--query sparql/identity.sparql --results turtle > kaa.ttl


