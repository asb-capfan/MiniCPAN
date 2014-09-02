use utf8;
package My::MiniCPAN::Schema::Result::FilterType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

My::MiniCPAN::Schema::Result::FilterType

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<filter_type>

=cut

__PACKAGE__->table("filter_type");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 module_filters

Type: has_many

Related object: L<My::MiniCPAN::Schema::Result::ModuleFilter>

=cut

__PACKAGE__->has_many(
  "module_filters",
  "My::MiniCPAN::Schema::Result::ModuleFilter",
  { "foreign.filter_type_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07041 @ 2014-08-16 14:04:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XSY3BOKDiOXR3+U0jE2Xhw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
