-ifndef(_animals_types_included).
-define(_animals_types_included, yeah).

-define(ANIMALS_ANIMALTYPE_ELEPHANT, 1).
-define(ANIMALS_ANIMALTYPE_MONKEY, 2).
-define(ANIMALS_ANIMALTYPE_GIRAFFE, 3).

%% struct 'Animal'

-record('Animal', {'id' :: integer(),
                   'type' :: integer()}).
-type 'Animal'() :: #'Animal'{}.

%% struct 'AnimalsCreateRequest'

-record('AnimalsCreateRequest', {'animal' = #'Animal'{} :: 'Animal'()}).
-type 'AnimalsCreateRequest'() :: #'AnimalsCreateRequest'{}.

%% struct 'AnimalsCreateResponse'

-record('AnimalsCreateResponse', {'animal' :: 'Animal'()}).
-type 'AnimalsCreateResponse'() :: #'AnimalsCreateResponse'{}.

-endif.
