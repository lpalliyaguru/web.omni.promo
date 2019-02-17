<template>
  <div class="wrapper">
    <button id="btn" class="" v-on:click="getJokes">Get List</button>
        <div class="row">
          <div v-for="promo in promoList" :key="promo.id">
            <div class="col-md-4 cards">
               <img src="https://placeimg.com/300/300/nature" class="img-responsive" alt="Random images placeholder">
            <div>
              <h3>{{ promo.title}}</h3>
              <p>{{ promo.description }}</p>
              <p>{{ promo.expires_on }}</p>
            </div>
          </div>
        </div>
        </div>
      </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'Omni',
  data () {
    return {
      promoList: [],
      loading: false
    }
  },
  methods: {
    getJokes: function () {
      this.loading = true
      axios.get('https://gqsd9tbafa.execute-api.ap-southeast-1.amazonaws.com/dev/deal')
        .then((response) => {
          this.loading = false
          this.promoList = response.data.body
        }, (error) => {
          if (error) {
            console.log(error)
          }
          this.loading = false
        })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
