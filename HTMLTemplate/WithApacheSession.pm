package MasonX::Request::HTMLTemplate::WithApacheSession;

use vars qw(@ISA);

use MasonX::Request::HTMLTemplate;

$MasonX::Request::HTMLTemplate::WithApacheSession::VERSION	= '0.02';

# the subclass used to initialized Masonx::Request
my $subclass = "MasonX::Request::WithApacheSession";

eval { 	
	my $modname = $subclass;
	$modname =~s/::/\//g;	
	require "$modname.pm"; 
};
if ($@) { die "Unable to find MasonX::Request::WithApacheSession" };

@ISA = ('MasonX::Request::HTMLTemplate',$subclass);

# overload new methods

1;
