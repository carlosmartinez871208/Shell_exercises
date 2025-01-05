#!/bin/bash

# Working with quotes.

Var1="Hello"
echo "Var1 content is: $Var1"
echo 'Var1 content is: $Var1'

# Using parameters.
# It is recomended to use ${Var1}; use keys to avoid issues with variables.
echo "Parameter values is: $1"
echo 'Parameter values is: $1'