<template>
    <div class="cards">
        <div class="container">
            <form class="addcardform align-self-center col-8 alert alert-error">
                    <div class="titleform form-group col-9">
                        <h1>Создать визитку</h1>
                    </div>                    
                    <div class="form-group row">
                        <label for="id-input" class="col-3 col-form-label col-form-label-sm">ID визитки</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm col-form-label-sm" type="text" v-model="newcard.id" placeholder="Введите ID" required id="id-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name-input" class="col-3 col-form-label col-form-label-sm">Имя</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.name" placeholder="Введите имя" required id="name-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="email-input" class="col-3 col-form-label col-form-label-sm">Email</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="email" v-model="newcard.email" placeholder="Введите Email" required id="email-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="password-input" class="col-3 col-form-label col-form-label-sm">Пароль</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="password"  v-model="newcard.password" placeholder="Введите пароль" required id="password-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="description-input" class="col-3 col-form-label col-form-label-sm">Подпись</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.description" placeholder="Введите подпись" id="description-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="sitebutton-input" class="col-3 col-form-label col-form-label-sm">Кнопка сайта</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.sitebutton" placeholder="http://???" id="sitebutton-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="messenger-input" class="col-3 col-form-label col-form-label-sm">Messenger</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.messenger" placeholder="ms.me/???" id="messenger-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="telegram-input" class="col-3 col-form-label col-form-label-sm">Telegram</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.telegram" placeholder="t.me\???" id="telegram-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="vk-input" class="col-3 col-form-label col-form-label-sm">VK</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.vk" placeholder="vk.me\???" id="vk-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="whatsapp-input" class="col-3 col-form-label col-form-label-sm">WhatsApp</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.whatsapp" placeholder="+???" id="whatsapp-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="viber-input" class="col-3 col-form-label col-form-label-sm">Viber</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.viber" placeholder="+???" id="viber-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="skype" class="col-3 col-form-label col-form-label-sm">Skype</label>
                        <div class="col-5">
                            <input class="form-control form-control-sm" type="text" v-model="newcard.skype" placeholder="???" id="skype-input">
                        </div>
                    </div>
                    <button type="submit" v-on:click="addnewcard(newcard)" class="btn btn-primary col-8 btn-block" >Добавить</button>                   
            </form>

            <table class="table">
                <thead>
                    <tr>
                        <th>Card ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Description</th>
                        <th>Site Button</th>
                        <th>Messenger</th>
                        <th>Telegram</th>
                        <th>Vk</th>
                        <th>WhatsApp</th>
                        <th>Viber</th>
                        <th>Skype</th>
                    </tr>
                </thead>
                 <tbody>
                    <tr v-for="card in cards">
                        <td>{{card.id}}</td>
                        <td>{{card.name}}</td>
                        <td>{{card.email}}</td>
                        <td>{{card.password}}</td>
                        <td>{{card.description}}</td>
                        <td><a :href="'http://' + card.sitebutton">{{card.sitebutton}}</a></td>
                        <td><a :href="'http://m.me/' + card.messenger">{{card.messenger}}</a></td>
                        <td><a :href="'https://t.me/' + card.telegram">{{card.telegram}}</a></td>
                        <td><a :href="'https://vk.me/' + card.vk">{{card.vk}}</a></td>
                        <td><a :href="'whatsapp://send?text=hey&amp;phone=' + card.whatsapp">{{card.whatsapp}}</a></td>
                        <td><a :href="'viber://add?number=' + card.viber">{{card.viber}}</a></td>
                        <td><a :href="'skype:' + card.skype + '?chat'">{{card.skype}}</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
    export default {
  name: 'cards',
  data () {
        return {
          cards: [
            {
              'id': '1',
              'name': 'Des',
              'email': 'des@gmail.com',
              'password': 'pass',
              'description': 'LOL',
              'sitebutton': 'xxxx',
              'messenger': 'ilo',
              'telegram': 'ilo',
              'vk': 'dos',
              'whatsapp': 'eee',
              'viber': 'ee',
              'skype': 'des'
            },
            {
              'id': '2',
              'name': 'Dos',
              'email': 'dos@gmail.com',
              'password': 'pass',
              'description': 'ILO',
              'sitebutton': 'xxxx',
              'messenger': 'ilo',
              'telegram': 'ilo',
              'vk': 'dos',
              'whatsapp': 'eee',
              'viber': 'ee',
              'skype': 'des'
            }
          ],

          newcard: {
            'id': '',
            'name': '',
            'email': '',
            'password': '',
            'description': '',
            'sitebutton': '',
            'messenger': '',
            'telegram': '',
            'vk': '',
            'whatsapp': '',
            'viber': '',
            'skype': ''
          }
        }
      },
      methods: {
        addnewcard: function () {
          var obj = {
            'id': '',
            'name': '',
            'email': '',
            'password': '',
            'description': '',
            'sitebutton': '',
            'messenger': '',
            'telegram': '',
            'vk': '',
            'whatsapp': '',
            'viber': '',
            'skype': ''
          }
          var emvarif = /^\w+@\w+\.\w{2,4}$/i
          obj.id = this.newcard.id
          obj.name = this.newcard.name
          if (emvarif.test(this.newcard.email)) {
            obj.email = this.newcard.email
          }
          obj.password = this.newcard.password
          obj.description = this.newcard.description
          obj.sitebutton = this.newcard.sitebutton
          obj.messenger = this.newcard.messenger
          obj.telegram = this.newcard.telegram
          obj.vk = this.newcard.vk
          obj.whatsapp = this.newcard.whatsapp
          obj.viber = this.newcard.viber
          obj.skype = this.newcard.skype
          if ((obj.id !== '') && (obj.name !== '') && (obj.email !== '') && (obj.password !== '')) {
            this.cards.push(obj)
          }
        }
      }
}
</script>

<style scoped>
.titleform{
    text-align: center;
}
.addcardform{
    margin-top: 20px;
    margin-bottom: 20px;
    margin-left: auto;
}
</style>

