class UserMailer < ApplicationMailer
    default from: "no-reply@gmail.com",
            template_path: 'user_mailer/'

    def welcome_email
        mail(to: 'seergoo117@yandex.ru', subject: 'My first letter to me')
    end
end
