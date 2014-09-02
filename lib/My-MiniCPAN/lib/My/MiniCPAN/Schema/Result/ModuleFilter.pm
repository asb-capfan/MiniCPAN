use utf8;
package My::MiniCPAN::Schema::Result::ModuleFilter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

My::MiniCPAN::Schema::Result::ModuleFilter

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<module_filter>

=cut

__PACKAGE__->table("module_filter");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 filter_type_id

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=head2 pattern

  data_type: 'text'
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "filter_type_id",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
  "pattern",
  { data_type => "text", is_nullable => 0 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 filter_type

Type: belongs_to

Related object: L<My::MiniCPAN::Schema::Result::FilterType>

=cut

__PACKAGE__->belongs_to(
  "filter_type",
  "My::MiniCPAN::Schema::Result::FilterType",
  { id => "filter_type_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07041 @ 2014-08-16 14:04:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jAHTOstVUFRnWqmEZVna3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
