<p align="center">
  <img alt="TEST USING RUBY ON RAILS" src=".github/logo.png" width="500px">
</p>

<p align="center">
  <a href="#-technologies">Technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-getting-started">Getting started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-project">Project</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-next-steps">Next steps</a>
</p>

<h1 align="center">
  <a href="#" target="_blank">
    TEST USING RUBY ON RAILS - Nuuvem
  </a>
</h1>

---

## 🧪 Technologies

This project was developed using the following technologies:

- [Ruby](https://www.ruby-lang.org/)
- [Rails](https://rubyonrails.org/)
- [Interactor](https://github.com/collectiveidea/interactor)
- [DropzoneJS](https://github.com/ncuesta/dropzonejs-rails)
- [Sass](https://sass-lang.com/)

## 🚀 Getting started

This project use **ruby 2.7.0** and **rails 5.2.6**. I recommend installing [RVM](https://rvm.io/) on your machine to change ruby and rails versions more easily and make better use of this project.

Clone the project and access the folder

```bash
$ git clone https://github.com/eltonsantos/dev-nuuvem-test.git && cd dev-nuuvem-test
```

Follow the steps below
```bash
# Install the dependencies
$ bundle install

# Create database
$ rails db:create

# Create migrations
$ rails db:migrate

# Start server
$ rails s

```

Or just for knowledge, to create the basic structure of the project, the following commands bellow were used

```bash
# Create project
$ rails new dev-9nama-test

# Create model Purchaser
$ rails g model Purchaser name:index

# Create model Merchant
$ rails g model Merchant name:index address:index

# Create model Item
$ rails g model Item description:index price:decimal{8-2}:index

# Create scaffold Orders
$ rails g scaffold Orders

# Create model Purchase
$ rails g model Purchase order:references item:references merchant:references purchaser:references quantity:integer

# Create database
$ rails db:create

# Create migrations
$ rails db:migrate

# Start server
$ rails s

```

To run all tests at the same time, do:

```bash
$ rspec --format documentation
```

To run a specific test do:

```bash
$ rspec --format documentation spec/models/[NAME]_spec.rb
```

###### --format documentation works to make the tests more formatted

## 💻 Project

This project was developed for testing in the company Nuuvem, in the July 18, 2021. The project consists of receiving a csv, tab or txt file, processing the file and adding it to the sqlite database. Also, be able to show order details as well as the order total. An **example file** for uploading is inside the **storage folder**.


## 🐾 Next steps

###### Escreverei essa parte em português

- [ ] Implementar layout infinito para mostrar todos pedidos na mesma tela ♾
- [ ] Implementar o dark mode para os olhos agradecerem 😎
- [ ] Implementar o skeleton loader para quando tiver muitos pedidos 🔼
- [ ] Ajustar alguns detalhes para o Layout ficar bem responsivo e fofo 🥰
- [ ] Login e senha para poder acessar os pedidos 🔐
- [ ] E muito mais... ❤💪🏼

---

## 👨🏻‍💻 Author

<h3 align="center">
  <img style="border-radius: 50%" src="https://avatars3.githubusercontent.com/u/1292594?s=460&u=0b1bfb0fc81256c59dc33f31ce344231bd5a5286&v=4" width="100px;" alt=""/>
  <br/>
  <strong>Elton Santos</strong> 🚀
  <br/>
  <br/>

 <a href="https://www.linkedin.com/in/eltonmelosantos" alt="LinkedIn" target="blank">
    <img src="https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white" />
  </a>

  <a href="mailto:elton.melo.santos@gmail.com?subject=Olá%20Elton" alt="Email" target="blank">
    <img src="https://img.shields.io/badge/-Gmail-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:elton.melo.santos@gmail.com" />
  </a>

<br/>

Made with ❤️ by Elton Santos 👋🏽 [Entre em contato!](https://www.linkedin.com/in/eltonmelosantos/)

</h3>