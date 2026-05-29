#!/bin/bash

# URL Variable

# Store artifact url into variable

ARTIFACT_URL="https://roboshop-builds.s3.amazonaws.com/catalogue.zip"


# Download the Artifact url

curl -o /tmp/catatalogue.zip $ARTIFACT_URL

echo "Downloading........SUCCESS"



