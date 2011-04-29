#! /bin/bash
CORE='womensbios'

echo Generating index...this will take some time
echo Updating add_doc

java -jar saxon/saxon9he.jar -xi:on -s ../../cocoon/xml/BooColl.xml -xsl:solr_add_docs.xsl > ./add_BooColl2.xml 

URL='http://localhost:8080/solr/womensbios'

echo Posting files to index...

curl $URL --data-binary '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
echo

echo Optimizing the index...
curl $URL --data-binary '<optimize/>' -H 'Content-type:text/xml; charset=utf-8'
echo

echo Pushing index out to nodes

PRODUCTION="quandu_production"

if [ -z $RAILS_ENV ]; then
  RAILS_ENV='quandu_staging'
fi

echo "Environment: $RAILS_ENV"

if [ $RAILS_ENV == $PRODUCTION ]; then
  curl http://sds3.itc.virginia.edu:8080/solr/admin/cores -F command=RELOAD -F core=$CORE
  curl http://sds4.itc.virginia.edu:8080/solr/admin/cores -F command=RELOAD -F core=$CORE
else
  curl http://localhost:8080/solr/admin/cores -F command=RELOAD -F core=$CORE
fi

echo


