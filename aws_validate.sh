#!/bin/bash
aws cloudformation validate-template --template-body file://$PWD/$1
