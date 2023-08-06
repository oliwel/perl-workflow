package TestApp::Condition::AlwaysTrue;

use strict;
use parent qw( Workflow::Condition );
use Log::Any qw( $log );

$TestApp::Condition::AlwaysTrue::VERSION = '0.01';

sub evaluate {
    my ( $self, $wf ) = @_;
    $log->debug( "Trying to execute condition ", ref( $self ) );
    $log->debug( 'Condition met ok' );

    return Workflow::Condition::IsTrue->new();
}

1;
