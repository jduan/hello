// Supported animal types
enum AnimalType {
    ELEPHANT = 1
    MONKEY = 2
    GIRAFFE = 3
}

struct Animal {
    // The id of the animal
    1: i32 id

    // The type of this animal
    2: AnimalType type
}

// Request struct to create an Animal
struct AnimalsCreateRequest {
    // Animal to be created
    1: required Animal animal
}

// Response struct for create request.
struct AnimalsCreateResponse {
    // Animal created (with persistence id)
    1: optional Animal animal
}

// Manages the animals in the Zoo.
service Animals {
    AnimalsCreateResponse create(1: AnimalsCreateRequest request)
}
