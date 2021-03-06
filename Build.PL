use Module::Build;

use strict;
use warnings;
use ExtUtils::nvcc;

my $build = Module::Build->new(
	module_name => 'CUDA::Minimal',
	license => 'perl',
	build_requires => {
				'ExtUtils::nvcc' => '0.01',
#				'ExtUtils::CBuilder' => '0',
			},
	requires => {
				'perl' => '0',
			},
	dist_author => 'David Mertens <dcmertens.perl@gmail.com>',
	config => {ExtUtils::nvcc::MB},
	include_dirs => '.',
);

print "Compiler is ", $build->config('cc'), "\n";
print "Linker is ", $build->config('ld'), "\n";

$build->create_build_script;

