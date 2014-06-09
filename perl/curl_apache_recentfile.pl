($username, $password, $basedir, $tofile) = @ARGV;

$command = "curl -u $username:$password $basedir";

$toplist = `$command`;

@files = split /<tr>/, $toplist;

($zipfile) = (@files[-3] =~ m/href="(.*?)"/);

$command = "curl -u $username:$password -o $localdir$zipfile $tofile";

exit system($command);

