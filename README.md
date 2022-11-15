# Writing README in process..

# Lamborghinian
Lamborghinian is a full-stack appplication for my Phase 4 Project at Flatiron School.

## Description
Model association:

```
Lamborghini 
  has_many :comments
  has_many :users, through: comments
  
Comment
  belongs_to :lamborghini
  belongs_to :user
  
User
  has_many :comments
  has_many :lamborghinis, through: :comments

Lamborghini <- Comment -> User
```

## Features
After singed in successfully, user(s) can:
- Read / Write / Edit / Delete comment(s) on different models of Lamborghini.
- Post up to 3 images of a Lamborghini with a description.
- View how many comments users wrote on Lamborghinis.

## Contributing
Myself

## References
1. Resources from Flatiron School Software Engineering Course.
2. Publicly available articles, lectures, videos from the Internet.

## License
[MIT](https://choosealicense.com/licenses/mit/)<br/>
[Lamborghini Automobili](https://www.lamborghini.com/en-en)


# Writing README in process..
