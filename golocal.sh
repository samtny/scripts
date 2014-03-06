#!/bin/bash
set -x
drush dis update -y
drush dis acquia_agent -y
drush en devel -y
drush vset error_level 1
drush vset -y preprocess_css 0
drush vset -y preprocess_js 0
drush vset -y devel_xhprof_directory '/usr/share/php'
drush vset -y devel_xhprof_url 'http://sam-www/xhprof_html'
