use strict;
use warnings;

use Test::More tests => 4;

{
    package Foo;

    use Test::More;
    use Dancer 1;

    is dancer_app->api_version => 1, 'can be forced to api v1';

    is ref( setting 'template' ) => 'Dancer::Template::Simple', 
        'v1 template is Simple';
}

{
    package Bar;

    use Test::More;
    use Dancer;

    is dancer_app->api_version => 2, 'default is 2';

    is ref( setting 'template' ) => 'Dancer::Template::Tiny', 
        'v2 template is Tiny';
}


