($username, $password, $basedir, $localdir) = @ARGV;

$command = "curl -u $username:$password $basedir";

$toplist = `$command`;

@files = split /<tr>/, $toplist;

($zipfile) = (@files[-3] =~ m/href="(.*?)"/);

$command = "curl -u $username:$password -o $localdir$zipfile $basedir$zipfile";

exit system($command);

