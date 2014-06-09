($username, $password, $basedir, $tofile) = @ARGV;

$command = "curl -u $username:$password $basedir";

$toplist = `$command`;

@files = split /<tr>/, $toplist;

($zipfile) = (@files[-3] =~ m/href="(.*?)"/);

$command = "curl -u $username:$password -o $tofile $basedir$zipfile";

exit system($command);

