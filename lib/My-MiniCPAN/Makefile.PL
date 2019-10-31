use 5.008008;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'My::MiniCPAN',
    VERSION_FROM      => 'lib/My/MiniCPAN.pm', # finds $VERSION, requires EU::MM from perl >= 5.5
    ABSTRACT_FROM     => 'lib/My/MiniCPAN.pm', # retrieve abstract from module
    PREREQ_PM         => {
        # e.g., Module::Name => 1.1
        'CPAN::Mini' => 1,
        'File::HomeDir' => 1,
        'Moose' => 1,
        'Moose::Util::TypeConstraints' => 1,
        'MooseX::Traits::SetScalarByRef' => 1,
        'curry' => 1,
        'File::HomeDir' => 1,
        'DBI' => 1,
        'DBD::SQLite' => 1,
        'My::MiniCPAN::Schema' => 1,
        'Color::Rgb' => 1,
        'File::ShareDir' => 1,
        'Tk' => '804',
        'Tk::Animation' => 1,
        'Tk::Dialog' => 1,
        'Tk::Menu' => 1,
        'Tk::Text' => 1,
        'Tk::HList' => 1,
        'Tk::Treeplus' => 1,
        'Tk::Image' => 1,
        'Tk::Labelframe' => 1,
        'Tk::Radiobutton' => 1,
        'Tk::StatusBar' => 1,
        'Tk::ToolBar' => 1,
        'Tk::LabEntry' => 1,
        'Tk::ROText' => 1,
        'Tk::PNG' => 1,
        'Tk::Photo' => 1,
        'B::Hooks::EndOfScope::XS' => 1,
        'Variable::Magic' => 1,
        'SQL::Abstract' => 1,
    },
    TEST_REQUIRES => {
        # modules only required for testing
        'Test::More' => '0.98',
        'Test::Pod' => '1.0',
        'Test::Pod::Coverage' => '1.08',
    },
    AUTHOR            => 'Alexander Becker <c a p f a n -at- g m x -dot- d e.invalid>',
    LICENSE           => 'perl',
    dist           => { COMPRESS => "gzip", SUFFIX => "gz" },
    META_MERGE     => {
        resources => {
            repository => 'https://github.com/asb-capfan/MiniCPAN',
        },
    },
    MIN_PERL_VERSION => 5.012002,
);
