#!/bin/bash
cucumber > ./features/log/$(date +"%Y%m%d_H%HM%M").txt
