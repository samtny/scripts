#!/bin/bash
set -x
drush vset -y file_temporary_path '/tmp'
drush updb -y
drush fra -y
