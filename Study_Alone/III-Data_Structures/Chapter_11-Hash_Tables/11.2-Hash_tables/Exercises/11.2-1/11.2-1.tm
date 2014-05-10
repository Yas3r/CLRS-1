<TeXmacs|1.99.1>

<style|generic>

<\body>
  <\render-exercise|11.2-1>
    \;

    Suppose we use a hash function <math|h> to hash <math|n> distinct keys
    into an array <math|T> of length <math|m>. Assuming simple uniform
    hashing, what is the expected number of collisions? More precisely, what
    is the expected cardinality of <math|<around*|{|<around*|{|k,l|}>:k\<neq\>l<hspace|1ex>and<hspace|1ex>h
    <around*|(|k|)>=h <around*|(|l|)>|}>>?

    <\answer>
      \;

      For each pair of distinct keys <math|k> and <math|l>, we define the
      indicator random variable <math|X<rsub|k\<nocomma\>l>=I <around*|{|h
      <around*|(|k|)>=h <around*|(|l|)>|}>>. Under the assumption of simple
      uniform hashing, we have <math|Pr <around*|{|h <around*|(|k|)>=h
      <around*|(|l|)>|}>=1/m>, and so by Lemma 5.1,
      <math|E<around*|[|X<rsub|k\<nocomma\>l>|]>=1/m>. Let <math|Y> denoted
      the total number of collisions, so that
      <math|Y=<big|sum><rsub|k\<neq\>l> X<rsub|k\<nocomma\>l>>. The expected
      number of collisions is

      <\eqnarray*>
        <tformat|<table|<row|<cell|E<around*|[|Y|]>>|<cell|=>|<cell|E<around*|[|<big|sum><rsub|k\<neq\>l>
        X<rsub|k\<nocomma\>l>|]>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<neq\>l>
        E<around*|[|X<rsub|k\<nocomma\>l>|]><hspace|4ex><text|(by linearity
        of expectation)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|2>>>>>|)>*<frac|1|m>>>|<row|<cell|>|<cell|=>|<cell|<frac|n*<around*|(|n-1|)>|2>\<cdot\><frac|1|m>>>|<row|<cell|>|<cell|=>|<cell|<frac|n*<around*|(|n-1|)>|2*m>>>>>
      </eqnarray*>
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
    <associate|footnote-|<tuple|?|?|../../../../../../../../../../.TeXmacs/texts/scratch/no_name_28.tm>>
    <associate|footnote-*|<tuple|?|1|../../../../../../../../../../.TeXmacs/texts/scratch/no_name_28.tm>>
  </collection>
</references>