#!/bin/bash

usage()
{
	echo "usage: packagezip.sh <version>"
	exit 1
}

VERSION=$1

if [[ $VERSION = "" ]]; then
	usage
fi

mkdir builds
rm builds/lambda-fastload-$VERSION.zip

zip -r builds/lambda-fastload-$VERSION.zip . -x node_modules/multer/**\* node_modules/express/**\* node_modules/express-promise-router/**\* node_modules/aws-sdk/**\*  builds/\* routes/\* .\* packagezip.sh 
