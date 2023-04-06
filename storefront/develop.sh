#!/bin/bash

npm install

npm run build &> /dev/null

npm run $1