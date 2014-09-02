use utf8;
package My::MiniCPAN::Schema::Result::Option;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

My::MiniCPAN::Schema::Result::Option

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<option>

=cut

__PACKAGE__->table("option");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 value

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "value",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07041 @ 2014-08-16 14:04:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UE9w9e9SSU3G878/vR1gYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
