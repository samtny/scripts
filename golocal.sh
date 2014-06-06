#!/bin/bash
set -x
drush cc drush

drush vset -y file_temporary_path '/tmp'

drush updb -y
drush fra -y

drush dis update acquia_agent apachesolr -y
drush en devel -y
drush vset error_level 1
drush vset -y preprocess_css 0
drush vset -y preprocess_js 0
drush vset -y devel_xhprof_directory '/usr/share/php'
drush vset -y devel_xhprof_url 'http://sam-www/xhprof_html'
drush vset -y views_skip_cache 1
