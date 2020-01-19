# HomeMade Broadcast Web application

This is an application to share videos, and have fun exploring the news from the internet.

### Tech

This application was made using Ruby on Rails, Twitter bootstrap, CarrierWave and Aws S3 for storage files.

### How to config

You need to have `ruby on rails` installed on your machine to work with.

You need to clone this project into your machine.
```shell
git clone https://github.com/danperes97/homemade_broadcast.git
```

Then inside the project folder, you can run.

```shell
bundle install
```

Then you should create the database, tables and structures.
```shell
bundle exec rails db:create
bundle exec rails db:migrate

#or if you want to

bundle exec rails db:setup
```

Then you need to create the config for `figaro` gem.
```shell
bundle exec figaro install
```

And then in your application.yml
```yml
SECRET_KEY_BASE: "fakefakefakefakefakefakefakefakefakefakefakefake"
AWS_ACCESS_KEY_ID: "fakefakefakefakefakefakefakefakefakefake"
AWS_SECRET_ACCESS_KEY: "fakefakefakefakefakefakefakefakefakefake"
S3_BUCKET_NAME: "your-app-name"
AWS_REGION: "us-east-1"
```

Then finally you can run
```shell
bundle exec rails s
```

### TODO

- Create tests
- Clean unnecessary code
- User kaminari for pagination
- Refactor code using services to compute views, and factories to create complex objects
- Add validations for any type of file. Avoid attacks using scripts.
- Solve devise problem with CSRF
