#!/bin/bash

NAMESPACE=rag
helm uninstall vkgrag-dev --namespace $NAMESPACE
