The magic of using auto margins in conjunction with CSS Flexbox.

<!-- more -->

<em><small>This post originally appeared on <a href="https://hackernoon.com/flexbox-s-best-kept-secret-bd3d892826b6" target="_blank">Medium.com</a>.</small></em>

I have been working with Flexbox for the past few months and absolutely loving how easy and intuitive it makes even the most complex of layouts. My CSS was hack-free, my markup was logical and in order and it seemed like I could position anything anywhere (`align-items: center;` FTW!). That feeling came to an abrupt end on the day that I asked myself the question, “How do I override justify-content to position a flex item independently along the main axis?” I was attempting to space flex items evenly along the main axis inside of a row with the last item floating all the way to the right side. I was stumped how to do this without floats or fixed margins.

I have read many articles about Flexbox, used it in production, and even given a few tech talks on the subject and it just seemed like something was missing. Every article on the subject explained how align-self can override align-items on the cross-axis, but not one showed how the same thing can be done on the main axis. I was about to accept that it was simply impossible to do hack-free, when a friend of mine (who had read the entire CSS Flexible Box Layout spec) asked me if I was using auto margins. Auto margins aren’t new at all to CSS of course, but when paired with Flexbox something magical happens!

> “TL;DR Flexbox and auto margins were made for each other.”

### Let’s get flexible!

Of course if you read the spec, you’ll see that auto margins are referenced right in the middle: [Spec Reference: 8.1](http://www.w3.org/TR/css-flexbox-1/#auto-margins). Aligning with auto margins. If you apply auto margins to a flex item, that item will automatically extend its specified margin to occupy the extra space in the flex container, depending on the direction in which the auto-margin is applied. For example, a `<div>` with the style `margin-left: auto` would be pushed all the way to the right of the flex container, with the left-side margin taking up any extra space between the left edge of the element and its previous sibling. If you don’t specify a direction, simply applying `margin: auto`, a flex item would evenly distribute any extra space on either side of the itself equally. This is a way to center one or more items along the main axis. Adding `margin: auto` to two or more flex items is essentially the same as applying `justify-content: space-around` to the flex container.


The magic of using auto margins in conjunction with Flexbox comes from allowing you to override the default alignment specified by justify-content on an individual flex item. In the example below, you can see that the price has `margin-left: auto` applied to it. This allows it to float to the right edge of the container while the rest of the flex items are aligned according to justify-content, which in this case is flex-start. It’s important to note that text alignment properties will have no effect if you are using auto margins because all the extra space along the main axis will be distributed to the margins first leaving no extra space for aligning text.


<p data-height="500" data-theme-id="light" data-slug-hash="GpwyOg" data-default-tab="result" data-user="samserif" data-embed-version="2" data-pen-title="Flexbox: auto margin example" class="codepen">See the Pen <a href="https://codepen.io/samserif/pen/GpwyOg/">Flexbox: auto margin example</a> by Sam Provenza (<a href="https://codepen.io/samserif">@samserif</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>

Another common use case is to group flex items along the main axis. In this example, `margin-left: auto` is applied to the li:nth-child(4) in the list of navigation links to separate the account nav items from the main nav list. All links will still be flex items using this technique but you have more control over their position.

<p data-height="500" data-theme-id="light" data-slug-hash="ZbmraP" data-default-tab="result" data-user="samserif" data-embed-version="2" data-pen-title="Flexbox: auto margin nav example" class="codepen">See the Pen <a href="https://codepen.io/samserif/pen/ZbmraP/">Flexbox: auto margin nav example</a> by Sam Provenza (<a href="https://codepen.io/samserif">@samserif</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>

This same technique can be applied vertically as well along the main axis when using `flex-direction: column`. In this example, `justify-content: space-around` is applied to the flex container and `margin-top: auto` is used on the button to push the call-to-action button and the text to the bottom of the flex container. You can achieve the same effect by wrapping the button and text in a `<div>`, but then the button and text would no longer be flex items. Note that you need to have a height applied to the flex container in order to see this in action.

<p data-height="500" data-theme-id="light" data-slug-hash="KdrQaB" data-default-tab="result" data-user="samserif" data-embed-version="2" data-pen-title="Flexbox: auto margin vertical example" class="codepen">See the Pen <a href="https://codepen.io/samserif/pen/KdrQaB/">Flexbox: auto margin vertical example</a> by Sam Provenza (<a href="https://codepen.io/samserif">@samserif</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>

### So what’s the bottom line?

Using auto margins with Flexbox is an effective way to get all of the flexibility of css floats, without the nastiness of breaking elements out of the document’s normal flow. It can be applied horizontally or vertically and it gives you more control of flex items along the main axis.

It was Flexbox’s best-kept secret, but now it’s your secret weapon. Enjoy!

</section>