import {districtsData} from '../scripts/data.js'

<election-district class="election-impact__district-detail">

  <section if={ data }>
    <span class="small">{ data.city }</span>
    <h3>{ data.name }</h3>
    <p class="big"><span>Impact-Factor:</span> { data.impact }</p>
    <p>
      <strong>Deine Stimme</strong> ist eine von <strong>{ data.votes_needed }</strong> Erststimmen, die die Bewerber in deinem Wahlkreis brauchen, um ihn zu gewinnen.
    </p>
    <p>In { data.below } Wahlkreisen ist der Einfluss niedriger. In { data.above } Wahlkreisen ist er höher!</p>
    <p>Das liegt unter anderem an der Wahlbeteiligung von { data.turnout * 100 }% in { data.name }</p>
  </section>

  riot.control.on(riot.EVT.showDistrict, data => {
    this.update({data})
  })

  riot.control.on(riot.EVT.clear, () => {
    this.update({data: null})
  })

</election-district>
