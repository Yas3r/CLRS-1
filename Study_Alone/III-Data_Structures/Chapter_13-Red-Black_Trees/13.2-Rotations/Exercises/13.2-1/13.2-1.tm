<TeXmacs|1.99.1>

<style|generic>

<\body>
  <\render-exercise|13.2-1>
    \;

    Write pseudocode for <with|font-shape|small-caps|Right-Rotate>.

    <\answer>
      \;

      <\render-code>
        <with|font-shape|small-caps|Left-Rotate<math|<around*|(|T,y|)>>>

        <hspace|1ex>1<hspace|3ex><math|x=y.left><hspace|20.5ex><verbatim|//>
        set <math|y>

        <hspace|1ex>2<hspace|3ex><math|y.left=x.right><hspace|15ex><verbatim|//>
        turn <math|x>'s right subtree into <math|y>'s left subtree

        <hspace|1ex>3<hspace|3ex><with|font-series|bold|if>
        <math|x.right.p\<neq\>T.nil>

        <hspace|1ex>4<hspace|7ex><math|x.right.p=y>

        <hspace|1ex>5<hspace|3ex><math|x.p=y.p><hspace|20.5ex><verbatim|//>
        link <math|y>'s parent to <math|x>

        <hspace|1ex>6<hspace|3ex><with|font-series|bold|if> <math|y.p==T.nil>

        <hspace|1ex>7<hspace|7ex><math|T.root=x>

        <hspace|1ex>8<hspace|3ex><with|font-series|bold|elseif>
        <math|y==y.p.left>

        <hspace|1ex>9<hspace|7ex><math|y.p.left=x>

        10<hspace|3ex><with|font-series|bold|else> <math|y.p.right=x>

        11<hspace|3ex><math|x.right=y><hspace|19ex><verbatim|//> put <math|y>
        on <math|x>'s right

        12<hspace|3ex><math|y.p=x>
      </render-code>
    </answer>
  </render-exercise>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
  </collection>
</initial>