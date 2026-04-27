#!/bin/bash

NAMESPACE=rag
helm uninstall vkgrag --namespace $NAMESPACE
