#!/bin/bash

npm run build &> /dev/null

npm run seed

npm run $1
