#!/bin/bash

ARTIFACT_VERSION=$(yq '.info.version' openai-openapi.yml)

openapi-generator-cli -g java -i openai-openapi.yaml -o openai-java \
--additional-properties=artifactDescription="OpenAI Java SDK" \
--additional-properties=apiPackage="space.fraktured.ai.client.api" \
--additional-properties=artifactId="openai-java-client" \
--additional-properties=artifactUrl="https://github.com/jmfwolf/openai-java" \
--additional-properties=artifactVersion=$ARTIFACT_VERSION \
--additional-properties=developerName="jmfwolf" \
--additional-properties=developerEmail="jmfwolf@fraktured.space" \
--additional-properties=developerOrganization="fraktured.space" \
--additional-properties=developerOrganizationUrl="fraktured.space" \
--additional-properties=groupId="space.fraktured.ai" \
--additional-properties=invokerPackage="space.fraktured.ai.client" \
--additional-properties=modelPackage="space.fraktured.ai.client.model"