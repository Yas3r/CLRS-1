<TeXmacs|1.99.1>

<style|generic>

<\body>
  <\render-exercise|11.2-2>
    \;

    Demonstrate what happens when we insert the keys
    <math|5,28,19,15,20,33,12,17,10> into a hash table with collisions
    resolved by chaining. Let the table have 9 slots, and let the hash
    function be <math|h <around*|(|k|)>=k mod 9>.

    <\answer>
      \;

      Figure 1 shows the image when we insert the keys
      <math|5,28,19,15,20,33,12,17,10> into a hash table with collisions
      resolved by chaining.

      <big-figure|<with|gr-mode|<tuple|group-edit|group-ungroup>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<gr-group|<carc|<point|-6.5|0>|<point|-2.5|0.0>|<point|-4.5|2.0>>|<text-at|<math|17>|<point|-5.2|-1.4>>|<text-at|<math|33>|<point|-5.65876615557613|-0.92732881174759>>|<with|arrow-end|\<gtr\>|<line|<point|-4.72979|-1.28684>|<point|-0.993831856065617|-2.10608215372404>>>|<point|-4.72979|-1.28684>|<with|arrow-end|\<gtr\>|<line|<point|-5.18855|-0.814185>|<point|-0.993831856065617|-1.00540746130441>>>|<point|-5.18855|-0.814185>|<text-at|Keys|<point|-5.9|-5.55111512312578e-17>>|<text-at|<math|15>|<point|-4.93941|-0.537545>>|<with|arrow-end|\<gtr\>|<line|<point|-4.46921|-0.424395>|<point|-0.993831856065617|-0.899573356264056>>>|<point|-4.46921|-0.424395>|<text-at|<math|5>|<point|-3.7824315385633|-0.48243815319487>>|<with|arrow-end|\<gtr\>|<line|<point|-3.48851|-0.368782>|<point|-0.993831856065617|-0.37040283106231>>>|<point|-3.4885|-0.368776>|<text-at|<math|20>|<point|-4.19835979957266|0.0>>|<with|arrow-end|\<gtr\>|<line|<point|-3.72816|0.113143>|<point|-0.993831856065617|1.49227741764784>>>|<point|-3.72816|0.113143>|<text-at|<math|28>|<point|-5.4|1.0>>|<text-at|<math|19>|<point|-4.7|0.7>>|<with|arrow-end|\<gtr\>|<line|<point|-4.92979|1.11314>|<point|-1.01499867707369|2.29661661595449>>>|<point|-4.92979|1.11314>|<with|arrow-end|\<gtr\>|<line|<point|-4.22979|0.813137>|<point|-0.993831856065617|2.12728204788993>>>|<point|-4.22979|0.813137>|<text-at|<math|12>|<point|-3.13895713587989|2.77555756156289e-17>>|<text-at|<math|10>|<point|-3.7|0.7>>|<with|arrow-end|\<gtr\>|<line|<point|-2.66876|0.113143>|<point|-0.993831856065617|0.793772324381532>>>|<point|-2.66876|0.113143>|<with|arrow-end|\<gtr\>|<line|<point|-3.22979|0.813137>|<point|-1.01499867707369|1.89444701680116>>>|<point|-3.22979|0.813137>|<gr-group|<line|<point|-1|3>|<point|-1.0|-2.4>|<point|0.0|-2.4>|<point|0.0|3.0>|<point|-1.0|3.0>>|<line|<point|-1|-1.8>|<point|0.0|-1.8>>|<line|<point|-1|-1.2>|<point|0.0|-1.2>>|<line|<point|-1|-0.6>|<point|0.0|-0.6>>|<line|<point|-1|0>|<point|0.0|0.0>>|<line|<point|-1|0.6>|<point|0.0|0.6>>|<line|<point|-1|1.2>|<point|0.0|1.2>>|<line|<point|-1|1.8>|<point|0.0|1.8>>|<line|<point|-1|2.4>|<point|0.0|2.4>>>|<line|<point|-0.210659|-1.30174>|<point|-0.803330466992989|-1.70391255457071>>|<with|arrow-end|\<gtr\>|<line|<point|-0.5|-2>|<point|0.7|-2.0>>>|<with|arrow-end|\<gtr\>|<line|<point|-0.5|-0.8>|<point|0.7|-0.8>>>|<line|<point|-0.210659|0.497437>|<point|-0.803330466992989|0.074100410107157>>|<text-at|<math|8>|<point|0.0999999999999999|-2.32310949215272>>|<with|arrow-end|\<gtr\>|<line|<point|-0.5|-0.2>|<point|0.7|-0.2>>>|<text-at|<math|7>|<point|0.102504|-1.68858>>|<text-at|<math|6>|<point|0.106168|-1.09007>>|<gr-group|<line|<point|0.7|-2.3>|<point|0.7|-1.8>|<point|2.2|-1.8>|<point|2.2|-2.3>|<point|0.7|-2.3>>|<line|<point|1.2|-1.8>|<point|1.2|-2.3>>|<text-at|<math|17>|<point|1.2665461705295|-2.2>>|<line|<point|1.7|-1.8>|<point|1.7|-2.3>>>|<text-at|<math|5>|<point|0.0999999999999999|-0.5>>|<with|arrow-end|\<gtr\>|<line|<point|-0.5|1>|<point|0.7|1.0>>>|<gr-group|<line|<point|0.7|-1.1>|<point|0.7|-0.6>|<point|2.2|-0.6>|<point|2.2|-1.1>|<point|0.7|-1.1>>|<line|<point|1.2|-0.6>|<point|1.2|-1.1>>|<text-at|<math|33>|<point|1.2665461705295|-1.0>>|<line|<point|1.7|-0.6>|<point|1.7|-1.1>>>|<text-at|<math|4>|<point|0.0988390000000001|0.10843>>|<gr-group|<line|<point|0.7|-0.5>|<point|0.7|2.77555756156289e-17>|<point|2.2|2.77555756156289e-17>|<point|2.2|-0.5>|<point|0.7|-0.5>>|<line|<point|1.2|2.77555756156289e-17>|<point|1.2|-0.5>>|<text-at|<math|<hspace|0.8ex>5>|<point|1.2665461705295|-0.4>>|<line|<point|1.7|2.77555756156289e-17>|<point|1.7|-0.5>>>|<with|arrow-end|\<gtr\>|<line|<point|-0.5|1.6>|<point|0.7|1.6>>>|<text-at|<math|3>|<point|0.10100873|0.70395>>|<with|arrow-end|\<gtr\>|<line|<point|-0.5|2.2>|<point|0.7|2.2>>>|<line|<point|2.09652|-1.89441>|<point|1.8001885169996|-2.19074943775632>>|<line|<point|-0.210659|2.91045>|<point|-0.803330466992989|2.50828482603519>>|<text-at|<math|2>|<point|0.110507|1.31778>>|<gr-group|<line|<point|0.7|0.7>|<point|0.7|1.2>|<point|2.2|1.2>|<point|2.2|0.7>|<point|0.7|0.7>>|<line|<point|1.2|1.2>|<point|1.2|0.7>>|<text-at|<math|12>|<point|1.2665461705295|0.8>>|<line|<point|1.7|1.2>|<point|1.7|0.7>>>|<gr-group|<line|<point|0.7|1.3>|<point|0.7|1.8>|<point|2.2|1.8>|<point|2.2|1.3>|<point|0.7|1.3>>|<line|<point|1.2|1.8>|<point|1.2|1.3>>|<text-at|<math|20>|<point|1.2665461705295|1.4>>|<line|<point|1.7|1.8>|<point|1.7|1.3>>>|<text-at|<math|1>|<point|0.114172|1.909105>>|<with|arrow-end|\<gtr\>|<line|<point|1.90602|-0.687905>|<point|2.79502910437889|-0.687905146183358>>>|<line|<point|2.09652|-0.0952342>|<point|1.8001885169996|-0.41273647307845>>|<text-at|<math|T>|<point|-0.7|3.1>>|<gr-group|<line|<point|0.7|1.9>|<point|0.7|2.4>|<point|2.2|2.4>|<point|2.2|1.9>|<point|0.7|1.9>>|<line|<point|1.2|2.4>|<point|1.2|1.9>>|<text-at|<math|10>|<point|1.2665461705295|2.0>>|<line|<point|1.7|2.4>|<point|1.7|1.9>>>|<with|arrow-end|\<gtr\>|<line|<point|3.09136|-0.899573>|<point|2.20235811615293|-0.899573356264056>>>|<text-at|<math|0>|<point|0.117836|2.52728>>|<line|<point|2.07536|1.11127>|<point|1.82135533800767|0.793772324381532>>|<gr-group|<line|<point|2.8|-1.1>|<point|2.8|-0.6>|<point|4.3|-0.6>|<point|4.3|-1.1>|<point|2.8|-1.1>>|<line|<point|3.3|-0.6>|<point|3.3|-1.1>>|<text-at|<math|15>|<point|3.3665461705295|-1.0>>|<line|<point|3.8|-0.6>|<point|3.8|-1.1>>>|<line|<point|2.09652|1.70395>|<point|1.8001885169996|1.40761013361556>>|<with|arrow-end|\<gtr\>|<line|<point|1.92719|2.29662>|<point|2.79502910437889|2.29661661595449>>>|<with|arrow-end|\<gtr\>|<line|<point|3.09136|2.10612>|<point|2.20235811615293|2.10611522688186>>>|<line|<point|4.19204|-0.687905>|<point|3.89570379679852|-0.984240640296336>>|<gr-group|<line|<point|2.8|1.91234309047106>|<point|2.8|2.41234309047106>|<point|4.3|2.41234309047106>|<point|4.3|1.91234309047106>|<point|2.8|1.91234309047106>>|<line|<point|3.3|2.41234309047106>|<point|3.3|1.91234309047106>>|<text-at|<math|19>|<point|3.3665461705295|2.01234309047106>>|<line|<point|3.8|2.41234309047106>|<point|3.8|1.91234309047106>>>|<with|arrow-end|\<gtr\>|<line|<point|4.00154|2.29662>|<point|4.91171120518587|2.29661661595449>>>|<with|arrow-end|\<gtr\>|<line|<point|5.20805|2.10612>|<point|4.29787339595185|2.10611522688186>>>|<gr-group|<line|<point|4.9|1.93372309047106>|<point|4.9|2.43372309047106>|<point|6.4|2.43372309047106>|<point|6.4|1.93372309047106>|<point|4.9|1.93372309047106>>|<line|<point|5.4|2.43372309047106>|<point|5.4|1.93372309047106>>|<line|<point|5.9|2.43372309047106>|<point|5.9|1.93372309047106>>|<text-at|<math|28>|<point|5.4665461705295|2.03372309047106>>>|<line|<point|6.28755|2.29662>|<point|6.0123858976055|2.02144794284958>>>>>|Sollision
      resolution by chaining. Each hash-table slot <math|T<around*|[|j|]>>
      contains a linked list of all the keys whose hash value is <math|j>.
      For example, <math|h <around*|(|28|)>=h <around*|(|19|)>=h
      <around*|(|10|)>=1>.>
    </answer>
  </render-exercise>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal||<pageref|auto-1>>
    </associate>
  </collection>
</auxiliary>