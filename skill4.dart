//8
//Создайте класс User, у которого есть поле email.
// Реализуйте два наследника данного класса AdminUser и GeneralUser.
// Реализуйте mixin над классом User, у которого будет метод getMailSystem,
// который возвращает значение из email, которое находится после @.
// Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru.
// Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>,
// у которого будет храниться список пользователей и будут методы добавления или удаления их.
// Также в UserManager реализуйте метод, который выведет почту всех пользователей,
// однако если пользователь admin, будет выведено значение после @.
// Проверьте реализованные методы на практике.


void main() {
  UserManager users = UserManager();
  users.addUser(AdminUser('dima655600@gmail.com'));
  users.addUser(GeneralUser('dima655600@gmail.com'));
  users.print_users();
}

class User {
  String email = "";
  User(this.email);

  String print_user() {
    return email;
  }
}

mixin userMailSystem {
  String getMailSystem(String email) {
    if (email.split('@').length > 1) {
      return email.split('@')[1];
    }
    return '';
  }
}

class AdminUser extends User with userMailSystem {
  AdminUser(String email) : super(email);
  String print_user() {
    return getMailSystem(email);
  }
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  late Set<T> users = {};
  void addUser(T new_user) {
    users.add(new_user);
  }

  void removeUser(T new_user) {
    users.remove(new_user);
  }

  void print_users() {
    for (var x in users) {
      print(x.print_user());
    }
  }
}