package Daje::Generate::Templates::Sql;
use Mojo::Base -base;

1;

__DATA__

@@ file

-- Auto generated file <<date>>
-- This file might be recreated so any manual changes might be overwritten

<<sections>>

@@ section

-- <<version>> up

<<table>>

-- <<version>> down

@@ table

create table if not exists <<tablename>>
(
    <<tablename>>_pkey serial not null,
    editnum bigint NOT NULL DEFAULT 1,
    insby varchar NOT NULL DEFAULT 'System',
    insdatetime timestamp without time zone NOT NULL DEFAULT NOW(),
    modby varchar NOT NULL DEFAULT 'System',
    moddatetime timestamp without time zone NOT NULL DEFAULT NOW(),
    <<fields>>
    CONSTRAINT <<tablename>>_pkey PRIMARY KEY (<<tablename>>_pkey)
    <<foregin_keys>>
);

<<indexes>>
<<sql>>

@@ foreign_key

CONSTRAINT idx_<<referenced_table>>_fkey FOREIGN KEY (<<referenced_table>>_fkey)
REFERENCES <<referenced_table>> (<<referenced_table>>_pkey) MATCH SIMPLE
                      ON UPDATE NO ACTION
                      ON DELETE NO ACTION
            DEFERRABLE


@@ index

CREATE <<type>> INDEX idx_<<table>>_<<field_names>>
    ON <<table>> USING btree
        (<<fields>>);

@@ insert

INSERT INTO <<tablename>> (<<fields>>) VALUES (<<values>>);


__END__








#################### pod generated by Pod::Autopod - keep this line to make pod updates possible ####################

=head1 NAME

Daje::Generate::Templates::Sql


=head1 DESCRIPTION

pod generated by Pod::Autopod - keep this line to make pod updates possible ####################


=head1 REQUIRES

L<Mojo::Base> 


=head1 METHODS


=cut

