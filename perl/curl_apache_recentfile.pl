($username, $password, $basedir) = @ARGV;

$command = "curl -u $username:$password $basedir";

$toplist = `$command`;

@files = split /<tr>/, $toplist;

($zipfile) = (@files[-3] =~ m/href="(.*?)"/);

$command = "curl -u $username:$password -o $zipfile $basedir$zipfile";

exit system($command);

