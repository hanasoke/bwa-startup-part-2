package user

type Service interface {
	RegisterUser(input RegisterUserInput) (User, error)
}

type service struct {
}

// mapping struct input ke struct User
