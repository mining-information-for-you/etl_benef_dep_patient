from uuid import uuid1

class patient():

    def __init__(self, id_dl=None, cod_progenitor=None, progenitor_is_benef=None, birthday=None, gender=None, city=None, state=None, skin_color=None, blood_type=None):
        self.id_dl = str(id_dl)
        self.cod_progenitor = str(cod_progenitor)
        self.progenitor_is_benef = str(progenitor_is_benef)
        self.birthday = str(birthday)
        self.gender = str(gender)
        self.city = str(city)
        self.state = str(state)
        self.skin_color = str(skin_color)
        self.blood_type = str(blood_type)

    def get_id_dl(self):
        return self.id_dl

    def set_id_dl(self, id_dl):
        self.id_dl = id_dl

    def get_cod_progenitor(self):
        return self.cod_progenitor

    def set_cod_progenitor(self, cod_progenitor):
        self.cod_progenitor = cod_progenitor

    def get_progenitor_is_benef(self):
        return self.progenitor_is_benef

    def set_progenitor_is_benef(self, progenitor_is_benef):
        self.progenitor_is_benef = progenitor_is_benef

    def get_birthday(self):
        return self.birthday

    def set_birthday(self, birthday):
        self.birthday = birthday

    def get_gender(self):
        return self.gender

    def set_gender(self, gender):
        self.gender = gender

    def get_city(self):
        return self.city

    def set_city(self, city):
        self.city = city

    def get_state(self):
        return self.state

    def set_state(self, state):
        self.state = state

    def get_skin_color(self):
        return self.skin_color

    def set_skin_color(self, skin_color):
        self.skin_color = skin_color

    def get_blood_type(self):
        return self.blood_type

    def set_blood_type(self, blood_type):
        self.blood_type = blood_type
