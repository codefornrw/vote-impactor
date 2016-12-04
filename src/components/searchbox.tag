import {districtsData} from '../scripts/data.js'

<election-impact-searchbox class="election-impact__searchbox">

  <input onInput={ onInput } placeholder="Suche nach deinem Wahlkreis" autofocus />

  <section class="election-impact__result-list" if={ results }>
    <section class="election-impact__result-list__item" onClick={ onClick } each={ results }>
      <h3>{ name }</h3>
      { desc }
    </section>
  </section>

  this.onInput = e => {
    riot.control.trigger(riot.EVT.clear)
    const value = e.target.value.toLowerCase()
    value.length > 3 ? this.doSearch(value) : this.results = null
  }

  this.doSearch = value => {
    this.results = districtsData.filter(d => d.search.indexOf(value) > -1)
  }

  this.onClick = e => {
    this.results = null
    riot.control.trigger(riot.EVT.showDistrict, e.item)
  }

</election-impact-searchbox>
