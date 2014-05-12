<TeXmacs|1.99.1>

<style|generic>

<\body>
  <\render-exercise|11.2-4>
    <render-footnote|*|This solution is digested from selected solution
    posted on the website of MIT Press, for more information see
    http://mitpress.mit.edu/sites/default/files/titles/content/9780262033848_Solutions_to_Exercises_and_Problems.pdf>

    Suggest how to allocate and deallocate storage for elements within the
    hash table itself by linking all unused slots into a free list. Assume
    that one slot can store a flog and either one elemnt puly a pointer or
    two pointers. All dictionary and free-list operations should run in
    <math|O <around*|(|1|)>> expected time. Does the free list need to be
    doubly linked, or does a singly linked free list suffice?

    <\answer>
      \;

      <with|font-series|bold|Data structures>

      The flag in a slot indicates whether the slot is free or not.

      <\itemize-dot>
        <item>Free slots are organized in a doubly linked free list. So a
        free slot consists of a flag as well as two pointers.

        <item>Besides the flag, a used slot contains an element and a pointer
        to its successor (possibly <with|font-shape|small-caps|nil>) which
        contains the next element hashes to this slot.
      </itemize-dot>

      <strong|Operations>

      <\itemize-dot>
        <item><strong|Insertion:>

        <\itemize-dot>
          <item>If the new element <math|e> hashes to a free slot
          <math|\<bbb-s\>>, store the <math|e> as well as a pointer to
          <with|font-shape|small-caps|nil> to <math|\<bbb-s\>> and remove
          <math|\<bbb-s\>> from the free list. The free list must be doubly
          linked so that the deletion can be done in <math|\<Theta\>
          <around*|(|1|)>> time.

          <item>If the new element <math|e> hashes to a used slot
          <math|\<bbb-u\>>, which contains an element <math|d>. Check to see
          if <math|d> belongs to <math|\<bbb-u\>>, that is, whether it hashes
          to <math|\<bbb-u\>> or not.

          <\itemize-dot>
            <item>If <math|\<bbb-u\>> is the slot <math|d> hashes to, add
            <math|e> to the chain of elements in <math|\<bbb-u\>>. To do so,
            allocate a slot <math|\<bbb-v\>> for <math|e> from the free list
            and add <math|\<bbb-v\>> at the head of chain pointed to by
            <math|\<bbb-u\>>.

            <item>If not, <math|d> is part of another slot's chain.
            Transplant <math|d> and all the pointers realted to it to a newly
            allocated slot <math|\<bbb-v\>>. Then insert <math|e> to
            <math|\<bbb-u\>> as if it is an empty slot. (To update the
            pointer to <math|\<bbb-u\>>, go down from the slot <math|d>
            hashes to find its predecessor.)
          </itemize-dot>
        </itemize-dot>

        <item><strong|Deletion:> Let <math|\<bbb-u\>> denoted the slot to
        which the to be deleted element <math|e> hashes.

        <\itemize-dot>
          <item>If <math|e> is the only element hashes to <math|\<bbb-u\>>,
          just free the slot <math|\<bbb-u\>>, returning it to the head of
          the free list.

          <item>If <math|e> is the first one in the chain of elements that
          hashes to <math|\<bbb-u\>>, transplant its successor to
          <math|\<bbb-u\>> and free its slot.

          <item>If <math|e> is not the first one in the chain of elements
          that hashes to <math|\<bbb-u\>>, update the pointer to <math|e>
          slot to point to <math|e>'s successor and free <math|e>'s slot.
        </itemize-dot>

        <item><strong|Searching:> Check and follow the chain of pointers from
        the slot to which the key hashes until the desired element was found.
      </itemize-dot>

      All these dictionary and free-list operations take average-case time
      <math|O <around*|(|1|)>>. The reason is similar to that version in the
      textbook: The expected time to search the chain is <math|O
      <around*|(|1+\<alpha\>|)>> in which <math|\<alpha\>\<leq\>1>, as all
      the elements are stored in the table.
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
    <associate|footnote-*|<tuple|?|1>>
  </collection>
</references>