#!/bin/bash

ISE14_IMAGE=${ISE14_IMAGE:-"ise:14.7"}

exec docker build -t ${ISE14_IMAGE} .
