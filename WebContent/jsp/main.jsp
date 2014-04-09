<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>UI Layout Plug-in - Documentation</title>

    <link rel="stylesheet" href="lib/css/global.css" type="text/css">
    <link rel="stylesheet" href="lib/css/documentation.css" type="text/css">
    <!--[if lte IE 7]>
        <style type="text/css"> body { font-size: 85%; } </style>
    <![endif]-->

    <!-- REQUIRED scripts for layout widget -->
    <script type="text/javascript" src="../lib/js/jquery-latest.js"></script>
    <script type="text/javascript" src="../lib/js/jquery-ui-latest.js"></script>
    <script type="text/javascript" src="../lib/js/jquery.layout-latest.js"></script>
    <script type="text/javascript" src="lib/js/global.js"></script>

    <script type="text/javascript">
    var pageLayout;

    $(document).ready(function(){
        // create page layout
        pageLayout = $('body').layout({
            scrollToBookmarkOnLoad:     false // handled by custom code so can 'unhide' section first
        ,   defaults: {
            }
        ,   north: {
                size:                   "auto"
            ,   spacing_open:           0
            ,   closable:               false
            ,   resizable:              false
            }
        ,   west: {
                size:                   250
            ,   spacing_closed:         22
            ,   togglerLength_closed:   140
            ,   togglerAlign_closed:    "top"
            ,   togglerContent_closed:  "C<BR>o<BR>n<BR>t<BR>e<BR>n<BR>t<BR>s"
            ,   togglerTip_closed:      "Open & Pin Contents"
            ,   sliderTip:              "Slide Open Contents"
            ,   slideTrigger_open:      "mouseover"
            }
        });

        // goto bookmark after creating the layout
        scrollToBookmark( self.location.hash );

    });
    </script>

</head>
<body>

<div class="ui-layout-north">

    <DIV id="logo">jQuery UI Layout Plug-in</DIV>
    <DIV id="navigation">
        <A href="index.cfm">HOME</A>
        <A href="demos.cfm">DEMOS</A>
        <A href="downloads.cfm">DOWNLOADS</A>
        <A href="documentation.cfm" class="current">DOCUMENTATION</A>
        <A href="tips.cfm">TIPS</A>
        <A href="plugin.cfm">PLUGIN</A>
        <A href="issues.cfm">ISSUES</A>
        <A target="_blank" href="http://groups.google.com/group/jquery-ui-layout">DISCUSSION</A>

    </DIV>
</div>

<div class="ui-layout-center content">

<h1 id="top">UI Layout Documentation</h1>

    <div style="float: right; padding: 7px 10px; margin: 0 0 1ex 1em; border: 1px solid #BBB;">
        <form action="http://groups.google.com/group/jquery-ui-layout/boxsubscribe" style="padding: 0; margin: 0;">
        <table cellpadding="5" cellspacing="0" border="0">
            <tr>
                <td><span class="google-logo"></span></td>
            </tr>
            <tr>
                <td style="font-size: 1em; font-weight: bold;">
                    Subscribe to jQuery UI Layout</td>
            </tr>
            <tr>
                <td><label for="email" style="vertical-align: middle;">Email:</label>
                    <input id="email" name="email" type="text" size="20" style="width: 20ex;">
                    <input type=submit name="sub" value="GO"></td>
            </tr>
            <tr>
                <td><a href="http://groups.google.com/group/jquery-ui-layout">Visit the UI Layout group</a></td>
            </tr>
        </table>
        </form>
    </div>

    <p>These instructions are for <b>the current release version, 1.2.0</b>.
        For assistance with beta or release candidate versions, or for questions or problems
        not addressed by this documentation or <a href="/tips.cfm">the tips page</a>, visit the UI Layout discussion group:</p>

    <h3>Overview</h3>

    <p>UI Layout creates a 'page-layout' with an auto-sizing 'center pane' surrounded by 
        up to four collapsible and resizable 'border panes' (north, south, east &amp; west). 
        It can also create multiple headers &amp; footers inside each pane.</p>

    <p>For more complex layouts, you can nest layouts within layouts.
        Or use an iframe as a pane to create a 'sub-form' that can have its own layout.
        The possibilities are unlimited - from simple fixed headers or sidebars to rich applications.</p>

    <p>Layouts are created from existing elements (divs, iframes, etc), so will degrade gracefully.
        You can even make some regions invisible, so they will not show if the user 
        does not have Javascript enabled.</p>

<!-- DONE! - leave note here for future re-use
    <P><STRONG>NOTE:</STRONG> <B>The new options added in version <STRONG>1.1.1</STRONG> 
        will be added to this document over the next couple of days.</B>
        These include options for hotkeys and text inside toggler buttons.</P>
-->

<p class="bold">
    <a href="#" onClick="return openAllSections()">Open All Sections</a> &nbsp;
    <a href="#" onClick="return closeAllSections()">Close All Sections</a>
</p>
<hr>




<h2 id="Depends_on">Depends on</h2>
<div class="collapsible">

    <p class="noBottomMargin bold">Required</p>
    <ul>
        <li>jquery.js</li>
        <li>ui.core.js</li>
    </ul>

    <p class="noBottomMargin bold">Optional</p>
    <ul>
        <li>ui.draggable.js &ndash; to enable resizing capability</li>
        <li>effects.core &ndash; for open/close animation effects</li>
        <li>effects.slide.js &ndash; for 'slide' effect</li>
        <li>effects.drop.js &ndash; for 'drop' effect</li>
        <li>effects.scale.js &ndash; for 'scale' effect</li>
    </ul>
</div>
<!-- end collapsible -->




<h2 id="Browsers">Supported Browsers</h2>
<div class="collapsible">

    <p>We're unaware of <i>any</i> browsers that do not work, but only these have been tested:</p>
    <ul>
        <li>Internet Explorer 6.x / 7.x </li>
        <li>Firefox 2.x / 3.x </li>
        <li>Safari 3.1 </li>
        <li>Opera 9.5 </li>
        <li>Google Chrome </li>
    </ul>
</div>
<!-- end collapsible -->




<h2 id="Demos">Demos</h2>
<div class="collapsible">

    <p>After viewing a demo, click 'Back' to return to this page</p>
    <ul>
        <li><a href="/demos/example.html">example.html</a> &mdash; a minimalist example (see source below)</li>
        <li><a href="/demos/simple.html">simple.html</a> &mdash; a simple, but complete layout</li>
        <li><a href="/demos/complex.html">complex.html</a> &mdash; utilizes many features and has a 'nested layout'</li>
    </ul>
    <p>SEE MORE demos &amp; samples on our <a href="/demos.cfm">demos page</a>.</p>
</div>
<!-- end collapsible -->




<h2 id="Example">Example</h2>
<div class="collapsible">

    <p>This is a minimalist layout with all 4 border-panes, with basic styling added for demo purposes 
        (applyDefaultStyles = true):</p>

<code><pre>
&lt;html&gt;
&lt;head&gt;
&lt;script src="jquery.js"&gt;&lt;/script&gt;
&lt;script src="jquery.layout.js"&gt;&lt;/script&gt;
&lt;script&gt;
    $(document).ready(function () {
        $('body').layout({ applyDefaultStyles: true });
    });
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div class="ui-layout-center"&gt;Center&lt;/div&gt;
&lt;div class="ui-layout-north"&gt;North&lt;/div&gt;
&lt;div class="ui-layout-south"&gt;South&lt;/div&gt;
&lt;div class="ui-layout-east"&gt;East&lt;/div&gt;
&lt;div class="ui-layout-west"&gt;West&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre></code>

    <p>VIEW this example page: <a href="/demos/example.html">example.html</a></p>
</div>
<!-- end collapsible -->




<h2 id="Terminology">Terminology</h2>
<div class="collapsible">

    <p>To help you understand layout options and instructions, here is the terminology used...</p>

    <h5 id="Container"><b>Container</b></h5>

    <blockquote>
        <p>The layout container is the element specifed when creating a layout. 
            Most commonly this will be the 'body' element, but you could put a layout inside any block-element, 
            including inside a 'pane' of another layout (a nested layout).</p>
        <p>Here is an example that creates a layout covering the entire page ('body'), 
            and a second layout that is <i>inside</i> the 'center pane' of the first layout:</p>

<code><pre>
$("body").layout();
$("body > .ui-layout-center").layout();
</pre></code>

        <p>You can see a sample of this layout in the <a href="/demos/complex.html">complex.html demo page</a>.</p>
    </blockquote>

    <h5 id="Panes"><b>Panes</b></h5>

    <blockquote>
        <p>When a border-layout is created, it has up to five regions: 'north', 'south', 'west', 'east' and 'center'. 
            (Only a center region is required) These regions/elements are referred to as 
            '<strong>panes</strong>' - as in window-panes.
            Most options apply only to the '<strong>border-panes</strong>', meaning all except the center-pane.</p>

        <p><b>NOTE: All panes are existing DIVs (or other elements) in your HTML mark-up</b> 
            &mdash; panes are NOT auto-generated. The pane elements must be direct 'children' of the 
            container element - i.e., not nested inside other elements.
            There is an exception for nesting inside a FORM, or if you use an ID as a selector
            instead of the default class-selectors.</p>

        <p><b>TIP</b>: Using an IFRAME as a pane works great!
            Since the iframe auto-sizes, you will never again have TWO vertical scrollbars on your page.
            This website's <a href="/discuss.cfm">Discussion</a> and <a href="/issues.cfm">Issues</a> 
            pages use a layout with an iframe to incorporate pages from other websites.</p>

        <p>In this document, when '<b>PANE</b>' is written in uppercase, it means <i>one of</i> the panes. 
            For example: <tt>&quot;ui-layout-PANE&quot;</tt> means <tt>&quot;ui-layout-north&quot;</tt>, 
            or <tt>&quot;ui-layout-center&quot;</tt>, etc.</p>

        <p>The auto-generated resizer-bar and toggler-button elements (DIVs) are 'attached' to their
            correpsonding border-pane and have related classNames, for example: 
            <tt>&quot;ui-layout-resizer-west&quot;</tt> is the resizer-bar for the west-pane: 
            <tt>&quot;ui-layout-pane-west&quot;</tt>.</p>
    </blockquote>

    <h5 id="Pane_Spacing"><b>Pane Spacing</b></h5>

    <blockquote>
        <p>'Pane spacing' refers to the space on the 'inside edge' of a border-pane. 
            For the north pane, this is the bottom edge, for the west pane, it's the right edge. 
            A pane can have -0- spacing, which means no space between it and the adjacent panes. 
            If a pane has no spacing, then it cannot have a resizer-bar or toggler-button.</p>

        <p>Spacing can be different when the pane is open than when closed: 
            Each pane has options for <tt>spacing_open</tt> and <tt>spacing_closed</tt></p>
    </blockquote>

    <h5 id="Resizer"><b>Resizer / Resizer-bar</b></h5>

    <blockquote>
        <p>A DIV element is created that fills the 'spacing' between panes. 
            The resizer DIV is always the full width of the spacing and the full height of the pane. 
            Panes can have different spacing set for open and closed states - the resizer-bar 
            is automatically resized and repositioned each time a pane is opened or closed.</p>
    </blockquote>

    <h5 id="Slider"><b>Slider / Slider-bar</b></h5>

    <blockquote>
        <p>Actually there is not a separate 'slider-bar' element - the resizer-bar acts as a slider-bar 
            when the pane is 'closed'. Clicking or hovering the resizer/slider bar will 'slide a pane open', 
            meaning it <i>slides over top</i> of the adjacent panes without resizing them. 
            When the mouse moves off the pane, it automatically slides closed again.
            This feature can be customized or disabled for each pane in the layout options.</p>
    </blockquote>

    <h5 id="Toggler"><b>Toggler / Toggler-button</b></h5>

    <blockquote>
        <p>A DIV element is created <i>inside</i> the resizer DIV. This DIV acts as a 'toggler-button' 
            to open and close a pane. You can make this look like anything you want by adding color, 
            borders, and/or a background-image to it. Or you can insert text, images 
            or custom HTML inside the toggler using the togglerContent options.</p>
        <p>The toggler button always fills the full width of the resizer-bar (<i>inside</i> resizer borders). 
            Toggler length is an option, which can be either a pixel-value, like 50, 
            or it can be &quot;100%&quot; (or -1). If set to 100%, the toggler completely covers the 
            resizer-bar (except for resizer borders). Note that this prevents 'resizing' when the pane is open, 
            and 'sliding open' when the pane is closed.</p>
        <p>Each pane can have different Toggler lengths, and these can be different depending on 
            whether the pane is open or closed, for example:</p>

<code><pre>
,   togglerLength_open:         50
,   togglerLength_closed:       &quot;100%&quot;
,   north__togglerLength_open:  &quot;100%&quot;
,   south__togglerLength_open:  &quot;100%&quot;
</pre></code>

    </blockquote>
</div>
<!-- end collapsible -->





<h2 id="Properties_Methods">Layout Properties &amp; Methods</h2>
<div class="collapsible">

    <p>A layout is creating by calling the method on the 'container element' of the layout, 
        and passing layout options (optional):</p>

<code><pre>
$('body').layout( [options] );
</pre></code>

        <p>If the layout-instance is assigned to an object pointer (recommended)...</p>

<code><pre>
var myLayout = $('body').layout();
</pre></code>

    <p>...then a number of properties, methods and utilities can be accessed to control 
        or inspect that 'specific layout instance':</p>

<code><pre>
<i>// init instance var</i>
var myLayout = $('body').layout();

<i>// read layout 'options'</i>
var is_west_resizable = myLayout.options.west.resizable;
var north_maxHeight   = myLayout.options.north.maxSize;

<i>// get layout 'state'</i>
var is_west_open = myLayout.state.west.isOpen;
var north_size   = myLayout.state.north.size;

<i>// layout methods</i>
myLayout.toggle("north");
myLayout.sizePane("west", 300);

<i>// layout utilities</i>
myLayout.addPinBtn("#myPinButton", "west");
myLayout.allowOverflow("north");
</pre></code>


    <h3 id="Properties">Properties</h3>

        <h5><b>panes</b></h5>
        <blockquote>
            An array of 'pane objects' (panes.north, panes.south, etc). 
            Each pane-element is in a jQuery wrapper. If a pane does not exist in the layout - 
            for example no south-pane - then <tt>panes.south == false</tt> - 
            <i>instead of</i> being a jQuery element.       </blockquote>

        <h5><b>options</b></h5>
        <blockquote>
            A hash containing all the options used to generate the layout, 
            including both default and user-specified options. 
            Options are returned in 'Sub-Key format' - see <a href="#Options">Options</a> below.        </blockquote>

        <h5><b>state</b></h5>
        <blockquote>
            A hash containing the dimensions of all the elements, including the layout container.
            Dimensions include borders and padding for: <tt>top, bottom, left, right</tt>, 
            plus <tt>outerWidth, outerHeight, innerWidth, innerHeight</tt>. 

<code><pre>
var containerWidth = myLayout.state.container.innerWidth;
var isWestOpen     = !myLayout.state.west.isClosed;

</pre></code>

            <p>SEE <a href="#Layout_State">Reading the Layout-State</a> for more information.</p>
        </blockquote>

    <h3 id="Methods">Methods</h3>

        <p>Most methods require a '<b>pane</b>' to be specified - usually a 'border-pane': 
            <tt>&quot;north&quot;</tt>, <tt>&quot;south&quot;</tt>, <tt>&quot;east&quot;</tt> or <tt>&quot;west&quot;</tt>.</p>

        <h5><b>toggle(</b> pane <b>)</b></h5>
        <blockquote>
            Toggle the specified pane open or closed - the opposite of its current state.       </blockquote>

        <h5><b>open(</b> pane <b>)</b></h5>
        <blockquote>
            Open the specified pane. If the pane is already open, nothing happens. 
            If the pane is currently 'hidden' (not just 'closed'), then the pane will be unhidden <i>and</i> opened.        </blockquote>

        <h5><b>close(</b> pane <b>)</b></h5>
        <blockquote>
            Close the specified pane. If the pane is already closed, nothing happens.       </blockquote>

        <h5><b>hide(</b> pane <b>)</b></h5>
        <blockquote>
            Hide the specified pane. When a pane is hidden, it has no spacing or resizer-bar or toggler-button 
            - it is completely invisible, as if it did not exist.       </blockquote>

        <h5><b>show(</b> pane, openPane = true <b>)</b></h5>
        <blockquote>
            Un-hide the specified pane. Normally also opens the pane, 
            but if you pass 'false' as the second parameter, then pane will un-hide, 
            but be 'closed' (slider-bar and toggler now visible).       </blockquote>

        <h5><b>sizePane(</b> pane, size_in_pixels <b>)</b></h5>
        <blockquote>
            This sizes the pane in the direction it opens and closes - for north and south panes, 
            size=outerHeight, for east and west panes, size=outerWidth. 
            The pane will only resize within its minSize and maxSize limits.        </blockquote>

        <h5><b>resizeContent(</b> pane <b>)</b></h5>
        <blockquote>
            Resizes the 'content container' inside the specified pane. Content is resized <i>automatically</i> 
            when the pane is resized or opened, so this method only needs to be called manually if  
            something 'changes the height' of a header or footer element in the pane.
            <p>SEE <a href="#Content-Scrolling">Content Scrolling (Headers &amp; Footers)</a>
                for more information. </p>
        </blockquote>

        <h5><b>resizeAll()</b></h5>

        <blockquote>
            Resizes the entire layout to fit its container. 
            This method runs automatically for all layouts when the browser window is resized. 
            <p>When a layout is <i>inside</i> another element (its 'container'), 
            and that container-element can be 'sized' without resizing the entire window, 
            then layout.resizeAll() should be called so the inner-layout will resize when its container resizes.</p>
            <p>In the example below, a 'resize callback' is added to the outerLayout.center pane
            because it is the container for the innerLayout:</p>

<code><pre>
outerLayout = $("body").layout({
    center__onresize: "innerLayout.resizeAll"
});

innerLayout = $("div.ui-layout-center").layout();
</pre></code>

        </blockquote>

        <h3 id="Utility_Methods">Utility Methods</h3>

            <h5 class="withNext"><b>addToggleBtn(</b> selector, pane <b>)</b></h5>
            <h5 class="withNext"><b>addCloseBtn(</b>  selector, pane <b>)</b></h5>
            <h5 class="withNext"><b>addOpenBtn(</b>   selector, pane <b>)</b></h5>
            <h5 class="withNext"><b>addPinBtn(</b>    selector, pane <b>)</b></h5>
            <h5 class="withNext"><b>allowOverflow(</b> elem_or_pane <b>)</b></h5>
            <h5><b>resetOverflow(</b> elem_or_pane <b>)</b></h5>

                <blockquote>
                    SEE <b><a href="#Utilities">Tips, Tricks and Utilities</a></b> for details on these special utility methods.                </blockquote>
</div>
<!-- end collapsible -->




<h2 id="Options">Options</h2>
<div class="collapsible">

    <p>Layout options are passed when creating a layout. 
        There are options to customize almost every aspect of a layout, <b>but all options are optional</b>. 
        You can use the default options to create a fast and simple layout, 
        or create a completely custom look for your application. 
        Callback options can also help integrate a layout with your design.</p>

    <p>You can either pass the options inline:</p>
<code><pre>
$("body").layout({ option1: value, option2: value });
</pre></code>

    <p>OR it may be convenient to save them in a var and pass that:</p>
<code><pre>
var myOptions = { option1: value, option2: value };
$("body").layout( myOptions );
</pre></code>

    <p>There are 2 different formats you can use to specify options:</p>
    <ul>
        <li><strong>Sub-Key format</strong> - ALL options are inside sub-keys</li>
        <li><strong>List format</strong> - no sub-keys - pane-specific options are 'prefixed'</li>
    </ul>


    <h3 id="Sub-Key_Format">Sub-Key Format for Options</h3>
        <p>With this format, every option must be inside either the 'defaults' sub-key 
            or a sub-key for a specific 'pane'...</p>
        <p>These are the options for the 'Inner Layout' on the 
            <a href="/demos/complex.html">complex demo page</a></p>

<code><pre>
$("body").layout({
   defaults: {
      fxName:               "slide"
   ,  fxSpeed:               "slow"
   ,  spacing_closed:        14
   ,  initClosed:            true
   }
,  north: {
      fxName:                "none"
   ,  spacing_closed:        8
   ,  togglerLength_closed:  "100%"
   }
,  south: {
      fxName:                "none"
   ,  spacing_closed:        8
   ,  togglerLength_closed:  "100%"
   }
});
</pre></code>

    <h3 id="List_Format">List Format for Options</h3>
        <p>List format uses prefixes to identify pane-specific options instead of separate sub-keys. 
            The prefix is the pane's name and TWO underscores, eg: <tt>&quot;north__fxName&quot;</tt>. 
            Options specified <i>without</i> a prefix (eg, fxName) are considered 'defaults'. 
            You <i>can</i> also prefix default options - <tt>&quot;defaults__fxName&quot;</tt>
            - but the prefix is not necessary.</p>
        <p>These are the same options shown above, but in list format. 
            List format allows options to be specified in any order, 
            so related default &amp; pane-specific options are grouped together here:</p>

<code><pre>
$("body").layout({
   fxName:                       "slide"
,  fxSpeed:                      "slow"
,  north__fxName:                "none"
,  south__fxName:                "none"
,  spacing_closed:               14
,  north__spacing_closed:        8
,  south__spacing_closed:        8
,  north__togglerLength_closed:  "100%"
,  south__togglerLength_closed:  "100%"
,  initClosed:                   true
}
</pre></code>

    <h3 id="Option_Specificity">Option Specificity</h3>
        <p>Options specified for an individual 'pane' <i>always</i> override options specified as 'defaults'.</p>
        <p>If the north, south and east panes should be 'closed' when the layout is created 
            - so only the west pane is open - then just 2 options are needed:</p>

<code><pre>
initClosed:       true
west__initClosed: false
</pre></code>

        <p>This causes all panes <i>except west</i> to be closed when created.</p>

    <h3 id="Selector_Options">Selector Options</h3>
    <p>Options with 'selector' in their name - like 'contentSelector' - 
        require a COMPLETE jQuery selector string. So if the selector is a className, 
        start it with a period (.) - if the selector is an ID, start it with a pound sign (#). 
        Any valid jQuery selector string can be used.</p>

    <h3 id="Class_Options">Class Options</h3>
        <p>Options with 'class' in their name - like 'togglerClass' - do NOT start with a period. 
            The classNames specified are applied to the element, plus are used as a <i>root</i> 
            for additional classNames. For example, if you set this options</p>

<code><pre>
togglerClass: "myToggler"
</pre></code>

        <p>This would generate ALL these classes for the toggler-button on the west-pane:</p>

<code><pre>
class="myToggler
       myToggler-west
       myToggler-open
       myToggler-west-open"
</pre></code>

        <p>When the west pane is closed, the last two classes would change to:</p>

<code><pre>
class="...
       myToggler-closed
       myToggler-west-closed"
</pre></code>

        <p>This provides total control of elements using CSS - you can apply <i>global</i> styles 
            using &quot;myToggler&quot; or &quot;myToggler-closed&quot;, 
            and styles for <i>specific elements</i> using &quot;myToggler-west&quot; 
            or &quot;myToggler-west-open&quot;.</p>

        <p><b>NOTE</b>: Use the default classes if you want to use a standard 'Layout theme'. 
            If you are using custom layout styles, then you can change the default class-names using the options.</p>


    <h3 id="List_of_Options">List of Options</h3>

        <p>Options can be set as 'defaults', which apply to ALL border-panes - 
            or be set for specific panes (eg, &quot;north&quot;). 
            There are a few options <i>cannot</i> be set as defaults,
            including 'paneSelector', 'resizerCursor' and the pane-callback options.</p>

        <div style="width: auto; overflow: hidden;">
            <table class="TOC" cellpadding="0" cellspacing="0" width="100%">
<tr class="rTitle">
    <td colspan="3">Basic Layout/Pane Options</td>
</tr>
    <tr class="r1">
        <td width="33%"><a href="#Option_applyDefaultStyles">applyDefaultStyles</a></td>
        <td width="34%"><a href="#Option_scrollToBookmarkOnLoad">scrollToBookmarkOnLoad</a></td>
        <td width="33%"><a href="#Option_showOverflowOnHover">showOverflowOnHover</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_closable">closable</a></td>
        <td><a href="#Option_resizable">resizable</a></td>
        <td><a href="#Option_slidable">slidable</a></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Element Selectors Strings</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_paneSelector">paneSelector</a></td>
        <td><a href="#Option_contentSelector">contentSelector</a></td>
        <td><a href="#Option_contentIgnoreSelector">contentIgnoreSelector</a></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Auto-generated Classnames</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_paneClass">paneClass</a></td>
        <td><a href="#Option_resizerClass">resizerClass</a></td>
        <td><a href="#Option_togglerClass">togglerClass</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_buttonClass">buttonClass</a></td>
        <td></td>
        <td></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Pane Size &amp; Spacing</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_size">size</a> &nbsp; <i>(initial size)</i></td>
        <td><a href="#Option_minSize">minSize</a></td>
        <td><a href="#Option_maxSize">maxSize</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_spacing_open">spacing_open</a></td>
        <td><a href="#Option_spacing_closed">spacing_closed</a></td>
        <td></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Resizer-bar Formatting</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_resizerTip">resizerTip</a></td>
        <td><a href="#Option_resizerCursor">resizerCursor</a></td>
        <td><a href="#Option_resizerDragOpacity">resizerDragOpacity</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_sliderTip">sliderTip</a></td>
        <td><a href="#Option_sliderCursor">sliderCursor</a></td>
        <td><a href="#Option_maskIframesOnResize">maskIframesOnResize</a></td>
    </tr>
    <tr class="r1">
        <td><a href="#Option_slideTrigger_open">slideTrigger_open</a></td>
        <td><a href="#Option_slideTrigger_close">slideTrigger_close</a></td>
        <td></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Toggler-button Formatting</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_togglerTip_open">togglerTip_open</a></td>
        <td><a href="#Option_togglerTip_closed">togglerTip_closed</a></td>
        <td></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_togglerLength_open">togglerLength_open</a></td>
        <td><a href="#Option_togglerLength_closed">togglerLength_closed</a></td>
        <td><a href="#Option_hideTogglerOnSlide">hideTogglerOnSlide</a></td>
    </tr>
    <tr class="r1">
        <td><a href="#Option_togglerAlign_open">togglerAlign_open</a></td>
        <td><a href="#Option_togglerAlign_closed">togglerAlign_closed</a></td>
        <td></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_togglerContent_open">togglerContent_open</a></td>
        <td><a href="#Option_togglerContent_closed">togglerContent_closed</a></td>
        <td></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Pane Open/Close Hotkeys</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_enableCursorHotkey">enableCursorHotkey</a></td>
        <td><a href="#Option_customHotkeyModifier">customHotkeyModifier</a></td>
        <td><a href="#Option_customHotkey">customHotkey</a></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Pane Animation Effects</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_fxName">fxName</a></td>
        <td><a href="#Option_fxName_open">fxName_open</a></td>
        <td><a href="#Option_fxName_close">fxName_close</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_fxSpeed">fxSpeed</a></td>
        <td><a href="#Option_fxSpeed_open">fxSpeed_open</a></td>
        <td><a href="#Option_fxSpeed_close">fxSpeed_close</a></td>
    </tr>
    <tr class="r1">
        <td><a href="#Option_fxSettings">fxSettings</a></td>
        <td><a href="#Option_fxSettings_open">fxSettings_open</a></td>
        <td><a href="#Option_fxSettings_close">fxSettings_close</a></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Layout State Initialization</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_initClosed">initClosed</a></td>
        <td><a href="#Option_initHidden">initHidden</a></td>
        <td></td>
    </tr>
<tr class="rTitle">
    <td colspan="3">Layout Event Callbacks</td>
</tr>
    <tr class="r1">
        <td><a href="#Option_onshow">onshow</a></td>
        <td><a href="#Option_onshow_start">onshow_start</a></td>
        <td><a href="#Option_onshow_end">onshow_end</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_onhide">onhide</a></td>
        <td><a href="#Option_onhide_start">onhide_start</a></td>
        <td><a href="#Option_onhide_end">onhide_end</a></td>
    </tr>
    <tr class="r1">
        <td><a href="#Option_onopen">onopen</a></td>
        <td><a href="#Option_onopen_start">onopen_start</a></td>
        <td><a href="#Option_onopen_end">onopen_end</a></td>
    </tr>
    <tr class="r0">
        <td><a href="#Option_onclose">onclose</a></td>
        <td><a href="#Option_onclose_start">onclose_start</a></td>
        <td><a href="#Option_onclose_end">onclose_end</a></td>
    </tr>
    <tr class="r1">
        <td><a href="#Option_onresize">onresize</a></td>
        <td><a href="#Option_onresize_start">onresize_start</a></td>
        <td><a href="#Option_onresize_end">onresize_end</a></td>
    </tr>
<!--
    <TR>
        <TD><A href="#Option_"></A></TD>
        <TD><A href="#Option_"></A></TD>
        <TD></TD>
    </TR>
-->
            </table>
        </div>

        <p><b>Options are listed indicating their default values.</b> 
            Where applicable, a list and/or description of other possible values is shown in brackets.</p>


        <h5 id="Option_applyDefaultStyles"><b>applyDefaultStyles</b> = false <em>(true, false)</em></h5>
            <blockquote>
                When this is enabled, the layout will apply basic styles directly to resizers &amp; buttons. 
                This is intended for quick mock-ups, so that you can 'see' your layout immediately.
                <p>Normally this should be set as a default option, but it can be set 'per-pane':</p>
<code><pre>
<i>// enable for ALL panes (List-style options)</i>
$("body").layout({
    applyDefaultStyles: true
});

<i>// enable for all <u>except</u> the west-pane</i>
$("body").layout({
    applyDefaultStyles:       true
,   west__applyDefaultStyles: false
});
</pre></code>
                <p>If this option is enabled, use <tt>&quot;!important&quot;</tt> to override the default styles.</p>
<code><pre>
<i>// 'important' required ONLY when applyDefaultStyles=true</i>
.ui-layout-pane {
    background-color: #EEE <strong>!important</strong>;
}
.ui-layout-resizer {
    background-color: #666 <strong>!important</strong>;
}
</pre></code>
                <p><b>TIP</b>: Disable or remove this option once you create 
                your own layout styles or specify a layout-theme stylesheet.
                For sample layout CSS, view the code in the <a href="/demos/simple.html">simple.html</a> demo
                &ndash; that CSS <i>replicates</i> the styles applied by this option.</p>
            </blockquote>


        <h5 id="Option_scrollToBookmarkOnLoad"><b>scrollToBookmarkOnLoad</b> = true <em>(true, false)</em></h5>
            <blockquote>
                This option handles of bookmarks that are passed on the URL of the page:
                <code>http://www.site.com/page.html<strong>#myBookmark</strong></code>
                <p>The default functionality of bookmarks is broken when using a layout because 
                the position and scrolling of pane elements are altered <u>after</u> the page loads.
                Enabling this option (enabled by default) causes the bookmark to be
                re-applied after the layout is created, causing the 'pane' containing the bookmark/anchor
                to be scrolled to bring it into view.</p>
                <p>This option should be left enabled in most cases, but if content in the
                layout-panes is never bookmarked, then you could disabled it.</p>
                <p>NOTE: This is a global option, so set in the top level of the options:</p>
<code><pre>
<i>// Sub-Key or List style options</i>
$("body").layout({
    <b>scrollToBookmarkOnLoad: false</b>
});
</pre></code>

            </blockquote>


        <h5 id="Option_showOverflowOnHover"><b>showOverflowOnHover</b> = false <em>(true, false)</em></h5>
            <blockquote>
                If 'true', then when moused-over, the pane's zIndex is raised and overflow is set to 'visible'.
                This allows pop-ups and drop-downs to overlap adjacent panes.
                <p><b>WARNING</b>: Enable this only for panes that <u>do not scroll</u>!</p>
                <p>SEE <a href="#Drop-Downs" >Working with Drop-Downs and Pop-Ups</a> for more information.</p>
            </blockquote>


        <h5 id="Option_closable"><b>closable</b> = true <em>(true, false)</em></h5>
            <blockquote>
                Can a pane be closed?           </blockquote>

        <h5 id="Option_resizable"><b>resizable</b> = true <em>(true, false)</em></h5>
            <blockquote>
                When open, can a pane be resized?           </blockquote>

        <h5 id="Option_slidable"><b>slidable</b> = true <em>(true, false)</em></h5>
            <blockquote>
                When closed, can a pane 'slide open' over adjacent panes?           </blockquote>


        <h5 id="Option_paneSelector"><b>paneSelector</b> = &quot;.ui-layout-PANE&quot; <em>(any valid jQuery selector string)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                Default values are: &quot;.ui-layout-north&quot;, &quot;.ui-layout-west&quot;, etc. 
                <br>Any valid jQuery selector string can be used - classNames, IDs, etc. 

                <p>To allow for 'nesting' of layouts, there are rules for how pane-elements are
                    related to the layout-container. More flexibility was added in version 1.1.2 to
                    handle panes are nested inside a 'form' or other element.</p>

                <p class="bold">Rules for the relationship between a pane and its container:</p>
                <ol>
                    <li>When an '<strong>ID</strong>' is specified for paneSelector,
                        the pane-element only needs to be <u>a descendant of the container</u>
                        &ndash; it does NOT have to be a 'child'.
                        <br>&nbsp;</li>
                    <li>When a '<strong>class-name</strong>' is specified for paneSelector,
                        the pane-element must be EITHER:
                        <ul>
                            <li><u>a child of the container</u>, or...</li>
                            <li><u>a child of a form-element that is a child of the container</u>
                                <br>(must be the 'first form' inside the container)</li>
                        </ul>
                    </li>
                </ol>

                <p class="bold">Example:&nbsp; Panes are 'children of the container' (normal):</p>
<code><pre>
   $(document).ready(function() {
      <i>// all panes are 'children' of body (normal)</i>
      $("<strong>body</strong>").layout();
   });
&lt;/head&gt;
&lt;body&gt;
   &lt;div class="ui-layout-north"&gt;
   &lt;div class="ui-layout-center"&gt;
   &lt;div class="ui-layout-west"&gt;
&lt;/body&gt;
</pre></code>

                <p class="bold">Example:&nbsp; Panes are 'children of the first child-form':</p>
<code><pre>
   $(document).ready(function() {
      <i>// 'body' is the container - NOT 'form'</i>
      $("<strong>body</strong>").layout();
   });
&lt;/head&gt;
&lt;body&gt;

   &lt;form&gt;<i>&lt;!-- <strong>a child of body, and the 1st form</strong> --&gt;</i>
      &lt;div class="ui-layout-north"&gt;
      &lt;div class="ui-layout-center"&gt;
      &lt;div class="ui-layout-west"&gt;
   &lt;/form&gt;

   &lt;form&gt;<i>&lt;!-- <strong>a child of body, and the 2nd form</strong> --&gt;</i>
      <i>&lt;!-- <strong>these divs will be IGNORED!</strong> --&gt;</i>
      &lt;div class="ui-layout-north"&gt;
      &lt;div class="ui-layout-center"&gt;
      &lt;div class="ui-layout-west"&gt;
   &lt;/form&gt;

&lt;/body&gt;
</pre></code>

                <p class="bold">Example:&nbsp; ID-selectors allow panes to be <u>deeply nested</u>:</p>
<code><pre>
   $(document).ready(function() {
      <i>// panes only need to be 'descendants' of container</i>
      $("<strong>body</strong>").layout({
         <i>// using custom 'ID' paneSelectors</i>
         north__paneSelector:  "#north"
      ,  west__paneSelector:   "#west"
      ,  center__paneSelector: "#center"
      });   
   });
&lt;/head&gt;
&lt;body&gt;
   &lt;form&gt;<i>&lt;!-- nested inside a form --&gt;</i>
      &lt;div&gt;<i>&lt;!-- nested a 2nd level --&gt;</i>
         &lt;div&gt;<i>&lt;!-- nested a 3rd level --&gt;</i>
            &lt;div id="north"&gt;
            &lt;div id="center"&gt;
            &lt;div&gt;<i>&lt;!-- nested a 4th level! --&gt;</i>
               &lt;div id="west"&gt;
            &lt;/div&gt;
         &lt;/div&gt;
      &lt;/div&gt;
   &lt;/form&gt;
&lt;/body&gt;
</pre></code>

                <p class="bold">Example:&nbsp; Using different selectors/features together:</p>
<code><pre>
   $(document).ready(function() {
      $("<strong>body</strong>").layout();
      <i>/*
         east &amp; west panes require 'ID' selectors
         because they are 'nested inside a div'
      */</i>
         west__paneSelector:   "<strong>#west</strong>"
      ,  east__paneSelector:   "<strong>#east</strong>"
      <i>/*
         north &amp; south panes are 'children of body'
         default-selectors shown just for reference
      */</i>
      ,  north__paneSelector:  ".ui-layout-north"
      ,  south__paneSelector:  ".ui-layout-center"
      */</I>
      <i>/*
         center pane is a 'child of the first form'
         default-selector shown just for reference
      */</i>
      ,  center__paneSelector: ".ui-layout-center"
      });   
   });
&lt;/head&gt;
&lt;body&gt;
   <i>&lt;!-- 'north' &amp; 'south' are children of body --&gt;</i>
   &lt;div class="ui-layout-north"&gt;
   &lt;div class="ui-layout-south"&gt;
   <i>&lt;!-- 'center' is nested inside a form --&gt;</i>
   &lt;form&gt;
      &lt;div class="ui-layout-center"&gt;
   &lt;/form&gt;
   <i>&lt;!-- 'east' &amp; 'west' are nested inside a div --&gt;</i>
   &lt;div&gt;
      &lt;div <strong>id="west"</strong>&gt;
      &lt;div <strong>id="east"</strong>&gt;
   &lt;/div&gt;
&lt;/body&gt;
</pre></code>

            </blockquote>


        <h5 id="Option_contentSelector"><b>contentSelector</b> = &quot;.ui-layout-content&quot; <em>(any valid jQuery selector string)</em></h5>
            <ul>
                <li>MUST be a 'child' of one of the panes</li>
            </ul>
            <blockquote>
                Selector string for INNER div/element. 
                This div will auto-size so only it scrolls, and not the entire pane.
                <p>Same class-name <i>could</i> be used for divs inside all panes.</p>
                <p>SEE <b>Content-Scrolling</b> below for more information.</p> 
            </blockquote>


        <h5 id="Option_contentIgnoreSelector"><b>contentIgnoreSelector</b> = &quot;ui-layout-ignore&quot; <em>(any valid jQuery selector string)</em></h5>
            <blockquote>
                Selector string for INNER divs/elements. These elements will be 'ignored' 
                when calculations are done to auto-size the content element. 
                This may be necessary if there are elements inside the pane that are absolutely-positioned 
                and intended to 'overlay' other elements. 
                <p>Same class-name <i>could</i> be used for elements inside all panes</p>
            </blockquote>


        <h5 id="Option_paneClass"><b>paneClass</b> = &quot;ui-layout-pane&quot; <em>(any valid className)</em></h5>
            <blockquote>
                Used for auto-generated classNames for each 'layout pane': 

<code><pre>
<i>// default classes applied to the 'west pane'</i>
class="ui-layout-pane
       ui-layout-pane-west 
       ui-layout-pane-open
       ui-layout-pane-west-open"
</pre></code>

                <p>The last two classes change when the pane is closed:</p>
<code><pre>
class="...
       ui-layout-pane-closed
       ui-layout-pane-west-closed"
</pre></code>

            </blockquote>


        <h5 id="Option_resizerClass"><b>resizerClass</b> = &quot;ui-layout-resizer&quot; <em>(any valid className)</em></h5>
            <blockquote>
                Used for auto-generated classNames for each 'resizer-bar': 
<code><pre>
class="ui-layout-resizer
       ui-layout-resizer-west  
       ui-layout-resizer-open
       ui-layout-resizer-west-open"
</pre></code>

                <p>The last two classes change when the pane is closed:</p>
<code><pre>
class="...
       ui-layout-resizer-closed
       ui-layout-resizer-west-closed"
</pre></code>

                <p>If the pane was 'slid open', <u>2 additional classes</u> are generated:</p>
<code><pre>
class="...
       ui-layout-resizer-sliding
       ui-layout-resizer-west-sliding"
</pre></code>

                <p>When a pane is 'resized', the <strong>'real resizer-bar'</strong> gets <u>2 additional classes</u>:</p>
<code><pre>
class="...
       ui-layout-resizer-drag
       ui-layout-resizer-west-drag"
</pre></code>

                <p>The <strong>'cloned resizer-bar'</strong> &ndash; which is actually 'dragged' &ndash; 
                    gets <u>2 different styles</u>:</p>
<code><pre>
class="...
       ui-layout-resizer-dragging
       ui-layout-resizer-west-dragging"
</pre></code>

                <p>See <a href="#Resizing_Classes">Classes Added During Resizing</a> for more information.</p>
            </blockquote>


        <h5 id="Option_togglerClass"><b>togglerClass</b> = &quot;ui-layout-toggler&quot; <em>(any valid className)</em></h5>
            <blockquote>
                Used for auto-generated classNames for each 'toggler-button': 
<code><pre>
class="ui-layout-toggler
       ui-layout-toggler-open 
       ui-layout-toggler-west
       ui-layout-toggler-west-open"
</pre></code>

                <p>The last two classes change when the pane is closed:</p>
<code><pre>
class="...
       ui-layout-toggler-closed
       ui-layout-toggler-west-closed"
</pre></code>

                <p>The toggler is 'inside' the resizer, so can also be accessed using those classes:</p>
<code><pre>
<i>/* CSS Rule - hide toggler while resizing */</i>
.ui-layout-resizer-drag  ui-layout-toggler {
    display: none;
}
</pre></code>

            </blockquote>


        <h5 id="Option_buttonClass"><b>buttonClass</b> = &quot;ui-layout-button&quot; <em>(any valid className)</em></h5>
            <blockquote>
                This is used as a prefix when generating classNames for <strong>'custom buttons'</strong>.
                <br><i>(Do not confuse with normal 'toggler-buttons')</i>

                <p>FIRST, the '<b>type</b>' (action) of the button is appended:</p>
                <ul>
                    <li>ui-layout-button-<b>toggle</b></li>
                    <li>ui-layout-button-<b>open</b></li>
                    <li>ui-layout-button-<b>close</b></li>
                    <li>ui-layout-button-<b>pin</b></li>
                </ul>

                <p>THEN, the '<b>pane name</b>' of the button is appended, like:</p>
                <ul>
                    <li>ui-layout-button-toggle-<b>west</b></li>
                    <li>ui-layout-button-open-<b>south</b></li>
                </ul>

                <p>Here are the generated styles for a custom 'close-button' for the 'west-pane':<code><pre>
class="ui-layout-button-close 
       ui-layout-button-close-west"
</pre></code>

                <p>Pin-buttons have additional classes added for 'pin-up' and 'pin-down' states:<code><pre>
class="ui-layout-button-pin 
       ui-layout-button-pin-west
       ui-layout-button-pin-up 
       ui-layout-button-pin-west-up"
</pre></code>

                <p>The last two classes change when the pane is 'pinned' (open):</p>
<code><pre>
class="...
       ui-layout-button-pin-down 
       ui-layout-button-pin-west-down"
</pre></code>

                <p>SEE <a href="#Custom_Buttons">Creating Custom Toggler Buttons</a> for more info.</p>
            </blockquote>


        <h5 id="Option_size"><b>size</b> = &quot;auto&quot;</TT> (N/S) <tt>&quot;200&quot;</tt> (E/W) <em>(&quot;auto&quot; or integer - pixels)</em></h5>
            <blockquote>
                Specifies the initial size of the panes 
                - 'height' for north &amp; south panes - 'width' for east and west. 
                If &quot;auto&quot;, then pane will <i>size to fit</i> its content - most useful for north/south panes 
                (to auto-fit your banner or toolbar), but also works for east/west panes. 
                <p>You normally will want different sizes for the panes, but a 'default size' can be set</p>
            </blockquote>

        <h5 id="Option_minSize"><b>minSize</b> = 50 <em>(integer - pixels)</em></h5>
            <blockquote>
                Minimum-size limit when resizing a pane (0 = as small as pane can go)           </blockquote>

        <h5 id="Option_maxSize"><b>maxSize</b> = 0 <em>(integer - pixels)</em></h5>
            <blockquote>
                Maximum-size limit when resizing a pane (0 = as large as pane can go)           </blockquote>


        <h5 id="Option_spacing_open" class="withNext"><b>spacing_open</b> = 6 <em>(integer - pixels)</em></h5>
        <h5 id="Option_spacing_closed"><b>spacing_closed</b> = 6 <em>(integer - pixels)</em></h5>
            <blockquote>
                Spacing between pane and adjacent pane - when pane is 'open' or 'closed'            </blockquote>


        <h5 id="Option_resizerTip"><b>resizerTip</b> = &quot;Resize&quot; <em>(any string)</em></h5>
            <blockquote>
                Tip when resizer-bar can be 'dragged' to resize a pane          </blockquote>

        <h5 id="Option_resizerCursor"><b>resizerCursor</b> = &quot;resizer-<b style="color:#F00">p</b>&quot; <em>(any valid CSS cursor)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
                <li>Default values are: <tt>&quot;resize-n&quot;</tt>, <tt>&quot;resize-w&quot;</tt>, etc.              </li>
            </ul>
            <blockquote>
                This is the cursor when the mouse is over the 'resizer-bar'. 
                However, if the mouse is over the 'toggler-button' <i>inside</i> the resizer bar, 
                then the cursor is a 'pointer' - ie, the togglerCursor instead of the resizerCursor.            </blockquote>

        <h5 id="Option_resizerDragOpacity"><b>resizerDragOpacity</b> = 1 <em>(decimal value between 0 and 1)</em></h5>
            <blockquote>
                Opacity of resizer bar when 'dragging' to resize a pane. 
                <p>This value is passed to the ui.draggable widget</p>
                <p>Leave this set to '1' if you want to use CSS to control opacity.
                    Otherwise you must use <span style="color: #F00;">!important</span> to override the specified opacity.</p>
            </blockquote>


        <h5 id="Option_maskIframesOnResize"><b>maskIframesOnResize</b> = true <em>(true, false, jQuery Selector string)</em></h5>
            <blockquote>
                When enabled, layout will 'mask' iframes on the page when the resizer-bar is 'dragged' to resize a pane.
                This solved problems related to dragging an element over an iframe.
                <p>If desired, you can mask only specific iframes and/or only when specific panes are resized:</p>
<code><pre>
<i>// mask ALL iframes when ANY pane is resized</i>
$('body').layout({
    maskIframesOnResize: true
});

<i>// mask specific iframes when specific panes are resized</i>
$('body').layout({
    west__maskIframesOnResize: "#iframe1, #iframe2"
,   east__maskIframesOnResize: ".ui-layout-pane iframe"
});
</pre></code>
                <p>The mask is a DIV with the class <code>ui-layout-mask</code>
                By default the DIV is transparent, but it can be give am overlay effect by adding color and opacity:</p>
<code><pre>
<i>/* CSS Rule - give iframe-mask shading */</i>
.ui-layout-mask {
    background-color: #666;
    opacity: 0.1;
    filter: alpha(opacity=10); <i>/* for IE */</i>
}
</pre></code>

            </blockquote>


        <h5 id="Option_sliderTip"><b>sliderTip</b> = &quot;Slide Open&quot; <em>(any string)</em></h5>
            <blockquote>
                Tip when the resizer-bar will trigger 'sliding open'            </blockquote>

        <h5 id="Option_sliderCursor"><b>sliderCursor</b> = &quot;pointer&quot; <em>(any valid CSS cursor)</em></h5>
            <blockquote>
                Cursor when resizer-bar will trigger 'sliding open' - ie, when pane is 'closed'         </blockquote>


        <h5 id="Option_slideTrigger_open" class="withNext"><b>slideTrigger_open</b> = &quot;click&quot; <em>(&quot;click&quot;, &quot;dblclick&quot;, &quot;mouseover&quot;)</em></h5>
        <h5 id="Option_slideTrigger_close"><b>slideTrigger_close</b> = &quot;mouseout&quot; <em>(&quot;click&quot;, &quot;mouseout&quot;)</em></h5>
            <blockquote>
                Trigger events to 'slide open' and 'slide closed' a pane            </blockquote>


        <h5 id="Option_togglerTip_open" class="withNext"><b>togglerTip_open</b> = &quot;Close&quot; <em>(any string)</em></h5>
        <h5 id="Option_togglerTip_closed"><b>togglerTip_closed</b> = &quot;Open&quot; <em>(any string)</em></h5>
            <blockquote>
                Tip on toggler when pane is 'open' or 'closed'.         </blockquote>


        <h5 id="Option_togglerLength_open" class="withNext"><b>togglerLength_open</b> = 50 <em>(integer - pixels)</em></h5>
        <h5 id="Option_togglerLength_closed"><b>togglerLength_closed</b> = 50 <em>(integer - pixels)</em></h5>
            <blockquote>
                Length of toggler-button when pane is 'open' or 'closed'. 
                <p>Length means 'width' for north/south togglers, and 'height' for east/west togglers.</p>
                <p><tt>&quot;100%&quot;</tt> OR <tt>-1</tt> means 'full height/width of resizer bar' - 0 means 'hidden'</p>
            </blockquote>

        <h5 id="Option_hideTogglerOnSlide"><b>hideTogglerOnSlide</b> = false <em>(true, false)</em></h5>
            <blockquote>
                If true, the toggler-button is hidden when a pane is 'slid-open'.
                This makes sense because the user only needs to 'mouse-off' to close the pane. 

                <p>You <i>could</i> set this 'false' and use CSS to do the same thing:</p>
<code><pre>
<i>/* CSS Rule - hide toggler when sliding-open */</i>
.ui-layout-resizer-sliding  ui-layout-toggler {
    display: none;
}
</pre></code>

            </blockquote>


        <h5 id="Option_togglerAlign_open" class="withNext"><b>togglerAlign_open</b> = &quot;center&quot; <em>(position-keyword or integer - pixels)</em></h5>
        <h5 id="Option_togglerAlign_closed"><b>togglerAlign_closed</b> = &quot;center&quot; <em>(position-keyword or integer - pixels)</em></h5>
            <blockquote>
                Alignment of toggler button inside the resizer-bar when pane is 'open' or 'closed'.
                <p>A positive integer means a <i>pixel offset</i> from top or left</p>
                <p>A negative integer means a <i>pixel offset</i> from bottom or right</p>
                <p>Position-Keywords: &quot;left&quot;, &quot;center&quot;, &quot;right&quot;, 
                    &quot;top&quot;, &quot;middle&quot;, &quot;bottom&quot;</p>
            </blockquote>


        <h5 id="Option_togglerContent_open" class="withNext"><b>togglerContent_open</b> = &quot;&quot; <em>(text or HTML)</em></h5>
        <h5 id="Option_togglerContent_closed"><b>togglerContent_closed</b> = &quot;&quot; <em>(text or HTML)</em></h5>
            <blockquote>
                Usually a background-image is set in CSS to customize a toggler-button.
                However, you can also put text inside a toggler by using these options.
                The text is wrapped in a SPAN, which is then added <i>inside</i> the toggler DIV.
                The SPAN classes identify them as either 'open' or 'closed' content:
<code><pre>
$('body').layout({
    west__togglerContent_open:   "&amp;#8249;" <i>// "&#8249;"</i>
,   west__togglerContent_closed: "&amp;#8250;" <i>// "&#8250;"</i>
,   east__togglerContent_open:   "&amp;#8250;" <i>// "&#8250;"</i>
,   east__togglerContent_closed: "&amp;#8249;" <i>// "&#8249;"</i>
});

<i>// would generates this HTML for the west-toggler</i>
&lt;SPAN class="... ui-layout-toggler-west ... "&gt;
   &lt;SPAN class="content content-open"&gt;<strong>&amp;#8249;</strong>&lt;/SPAN&gt;
   &lt;SPAN class="content content-closed"&gt;<strong>&amp;#8250;</strong>&lt;/SPAN&gt;
&lt;/SPAN&gt;
</pre></code>

                <p>You MUST add CSS to format the toggler-text or else it will only be '1px'!</p>
<code><pre>
<i>/* format the text inside the toggler */</i>
.ui-layout-toggler .content {
   font-size: 12px; <i>/* IMPORTANT: default = 1px */</i>
   font-weight: bold;
   text-align: center;
}
</pre></code>

                <p>NOTE: If you want a background-color or border on the toggler-button,
                    set it on the 'toggler' element - NOT on the toggler 'content' element.
                <p>The inner text-span will be automatically centered inside the toggler button.</p>
            </blockquote>


        <h5 id="Option_enableCursorHotkey"><b>enableCursorHotkey</b> = true <em>(true, false)</em></h5>
            <blockquote>
                If 'true', then 'cursor hotkeys' are enabled. Can be set per-pane if desired.
                <p>These <i>default</i> hotkeys cannot be changed - only enabled or disabled.</p> 

                <p>The cursor/arrow key must be pressed in combination with <b>CTRL</b> <i>-or-</i> <b>SHIFT</b></p>
                <ul>
                    <li>Toggle North-pane:&nbsp; <tt><strong>CTRL+Up</strong></tt> &nbsp; or &nbsp; <tt><strong>SHIFT+Up</strong></tt>
                    <li>Toggle South-pane:&nbsp; <tt><strong>CTRL+Down</strong></tt> &nbsp; or &nbsp; <tt><strong>SHIFT+Down</strong></tt>
                    <li>Toggle West-pane:&nbsp;&nbsp; <tt><strong>CTRL+Left</strong></tt> &nbsp; or &nbsp; <tt><strong>SHIFT+Left</strong></tt>
                    <li>Toggle East-pane:&nbsp;&nbsp;&nbsp; <tt><strong>CTRL+Right</strong></tt> &nbsp; or &nbsp; <tt><strong>SHIFT+Right</strong></tt>
                </ul>

                <p>The SHIFT+ARROW combinations are <i>ignored</i> if pressed while the cursor is in a form field,
                    allowing users to 'select text' &mdash; eg: SHIFT+Right in a TEXTAREA<p>
            </blockquote>


        <h5 id="Option_customHotkeyModifier"><b>customHotkeyModifier</b> = "SHIFT" <em>("CTRL", "SHIFT", "CTRL+SHIFT")</em></h5>
            <blockquote>
                Custom hotkeys must be pressed in combination with either the CTRL or SHIFT key - or both together.  
                Use this option to choose which modifier-key(s) to use with the customHotKey.

                <p>If this option is missing or invalid, "CTRL+SHIFT" is assumed.</p>

                <p>NOTE: The ALT key cannot be used because it is not detected by some browsers.</p> 
            </blockquote>


        <h5 id="Option_customHotkey"><b>customHotkey</b> = "" <em>(alphanumeric character OR a charCode)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                If a hotkey is specified, it is <u>automatically enabled</u>.
                It does not matter whether 'cursor hotkeys' are also enabled &ndash;
                those are separate.

                <p>You can specify any of the following values:</p>
                <ul>
                    <li>letter from A to Z</li>
                    <li>number from 0 to 9</li>
                    <li>Javascript charCode value for the key</li>
                </ul>

                <p>The customHotkeys option must be set separately for each pane, but the customHotkeyModifier
                    option can be set <i>once</i>, as the 'default' for all panes.</p>
            </blockquote>


        <h5 id="Option_fxName"><b>fxName</b> = &quot;slide&quot; <em>(&quot;none&quot;, &quot;slide&quot;, &quot;drop&quot;, &quot;scale&quot;, <i>customer effect name</i>)</em></h5>
            <blockquote>
                Animation effect for open/close. Choose a preset effect OR can specify a custom fxName 
                as long as you also specify fxSettings (even if fxSettings is just empty - {})          </blockquote>

        <h5 id="Option_fxSpeed"><b>fxSpeed</b> = &quot;normal&quot; <em>(&quot;fast&quot;, &quot;normal&quot;, &quot;slow&quot;, integer - ms)</em></h5>
            <blockquote>
                Speed of animations &ndash; standard jQuery keyword like 'fast', or a millisecond value.            </blockquote>

        <h5 id="Option_fxSettings"><b>fxSettings</b> = {} <em>(Hash containing fx-settings)</em></h5>
            <blockquote>
                You can customize the default animation settings by passing new settings, like:
<code><pre>
$("body").layout({
    fxName:     "slide"
,   fxSettings: { duration: 500, easing: "bounceInOut" }
});
</pre></code>

                If a non-standard effect is specified, then fxSettings is REQUIRED (can be 'empty' though) 
<code><pre>
$("body").layout({
    fxName:     "blind"
,   speed:      1000 <i>// optional</i>
,   north__fxSettings: { direction: "vertical" }
,   west__fxSettings:  { direction: "horizontal" }
,   east__fxSettings:  {} <i>// empty fxSettings is still valid!</i>
});
</pre></code>

                <p>It's also possible to extend the 'default' layout effects by passing a special key:</p>
<code><pre>
$("body").layout({
   <strong>effects</strong>: {
      <i>// MODIFY a standard effect</i>
      slide: {
         all: { duration: 500, easing: "bounceInOut" }
      }
      <i>// ADD a new effect</i>
   ,  blind: {
         all:   {}
      ,  north: { direction: "vertical" }
      ,  south: { direction: "vertical" }
      ,  east:  { direction: "horizontal" }
      ,  west:  { direction: "horizontal" }
      }
   }
});
</pre></code>
                <p>You MUST use the <a href="#Sub-Key_Format">sub-key option format</a> to update default effects.
                    <br>(This will change when Layout is updated to the UI widget API)</p>
            </blockquote>


        <h5 id="Option_initClosed"><b>initClosed</b> = false <em>(true, false)</em></h5>
            <blockquote>
                If 'true', then pane is 'closed' when layout is created         </blockquote>

        <h5 id="Option_initHidden"><b>initHidden</b> = false <em>(true, false)</em></h5>
            <blockquote>
                If 'true', then pane is 'hidden' when layout is created - no resizer or spacing is visible, 
                as if the pane does not exist!          </blockquote>


        <h5 id="Option_onshow" class="withNext"><b>onshow</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onshow_start" class="withNext"><b>onshow_start</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onshow_end"><b>onshow_end</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                Callback function name - activate when pane is 'closed' 
                <p>SEE <a href="#Callback_Functions">Using Callback Functions</a> below.</p>
            </blockquote>

        <h5 id="Option_onhide" class="withNext"><b>onhide</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onhide_start" class="withNext"><b>onhide_start</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onhide_end"><b>onhide_end</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                Callback function name - activate when pane is 'closed' 
                <p>SEE <a href="#Callback_Functions">Using Callback Functions</a> below.</p>
            </blockquote>

        <h5 id="Option_onopen" class="withNext"><b>onopen</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onopen_start" class="withNext"><b>onopen_start</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onopen_end"><b>onopen_end</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                Callback function name - activate when pane is 'opened' 
                <p>SEE <a href="#Callback_Functions">Using Callback Functions</a> below.</p>
            </blockquote>

        <h5 id="Option_onclose" class="withNext"><b>onclose</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onclose_start" class="withNext"><b>onclose_start</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onclose_end"><b>onclose_end</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                Callback function name - activate when pane is 'closed' 
                <p>SEE <a href="#Callback_Functions">Using Callback Functions</a> below.</p>
            </blockquote>

        <h5 id="Option_onresize" class="withNext"><b>onresize</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onresize_start" class="withNext"><b>onresize_start</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
        <h5 id="Option_onresize_end"><b>onresize_end</b> = &quot;&quot; <em>(name of, or pointer to a callback function)</em></h5>
            <ul>
                <li>MUST set <b>individually</b> for EACH PANE</li>
            </ul>
            <blockquote>
                Callback function name - activate when pane is 'resized' 
                - either manually or as a result of the container resizing. 
                <p>SEE <a href="#Callback_Functions">Using Callback Functions</a> below.</p>
            </blockquote>
</div>
<!-- end collapsible -->





<h2 id="Layout_State">Reading the Layout-State</h2>
<div class="collapsible">

    <p>As of version 1.1.1, a <strong>'state'</strong> object was added to UI Layout.
        This hash object contains the 'current dimensions' for all panes, 
        plus logic-vars indicating each pane's 'current state'.
        For example: Is the west pane open or closed? What is its current size?</p>

    <p>This object is exposed as a 'state' property (eg: myLayout.state) so it can be read by custom code.
        <u>All state properties are READ-ONLY</u></p>

    <p>All state data must be referenced 'by pane'. Most logic-vars (eg: isClosed) apply only to 'border panes'.</p>
<code><pre>
var state = <strong>myLayout.state</strong>;

<i>// current state</i>
var isWestPaneOpen       = !state.west.isClosed;
var isSouthPaneHidden    = state.south.isHidden;
var isEastPaneSliding    = state.east.isSliding;

<i>// current dimensions</i>
var westCurrentSize      = state.west.size;
var westMinimumSize      = state.west.minSize;
var containerInnerWidth  = state.container.innerWidth;
var containerPaddingLeft = state.container.paddingLeft;
</pre></code>

    <p><u>State functionality is not yet finished</u>.</p>
    <p>Eventually a complete set of dimensions, including padding and borders,
        will be available for ALL panes, including the center.
        Details on this will be added here when it is complete.</p>
    <p>In the meantime, you can measure the panes youself if needed.</p>

    <h3 id="Logic_Vars">Auto-Generated State-Logic Vars</h3>

        <h5><b>isClosed</b> <em>(true, false)</em></h5>
            <blockquote>
                Is the pane 'closed'? If not closed, then could be EITHER 'open normally' OR 'sliding open'.            </blockquote>

        <h5><b>isSliding</b> <em>(true, false)</em></h5>
            <blockquote>
                When a pane is 'sliding', it was opened by <b><i>sliding over-top</i></b> of other panes.
                The pane <i>is</i> 'open', but only temporarily - until the user moves their mouse off.
                <p>This is different from when a pane is 'opened normally', and
                    becomes fixed in place, and all adjacent panes are resized.</p>
                <p>When isSliding=true, isClosed=false - when it slides closed again, isClosed=true.</p>
                <p>When a pane is 'opened normally', isClosed=false AND isSliding=false.</p>
            </blockquote>

        <h5><b>isResizing</b> <em>(true, false)</em></h5>
            <blockquote>
                This is only true when the user is in the process of 'dragging' the resizer bar.            </blockquote>

        <h5><b>isHidden</b> <em>(true, false)</em></h5>
            <blockquote>
                A 'hidden pane' is <u>not</u> the same as a 'closed pane'.
                When a pane is hidden, it is as if it does not exist - there is no
                resizer-bar or toggler-button visible, and the 'pane spacing' collapses.
                <p>So if a pane is hidden, you must have some other way to make it visible again.
                    This means a custom button or some other custom code that calls the show() command.</p>
            </blockquote>

        <h5><b>noRoom</b> <em>(true, false)</em></h5>
            <blockquote>
                When there is 'not enough room' for a pane to be displayed, it is 
                <i>automatically hidden</i>. In this case, isHidden=true AND noRoom=true.
                <p>This is different than hiding a pane using the hide() command, because
                    when there is enough room for the pane to appear (by resizing or closing a pane),
                    the hidden pane will reappear <i>automatically</i>.</p>
                <p><b>This is the only logic var that also applies to the 'center-pane'.</b></p>
            </blockquote>

    <h3 id="Reading_Size">Reading Pane-Size</h3>
        <p>The state.PANE.size property is the 'current size'.
            This is different from options.PANE.size, which was the 'initial size' 
            specified when the layout was created.</p>
        <p>Numerous size values are available, including minSize &amp; maxSize.
            These are constantly updated based on the layout's current state.
            (You can read the <i>initial</i> minSize/maxSize from 'layout.options')</p>
        <p>The state pane-size can be combined with state-logic data 
            when 'saving the current layout state'.</p>

    <h3 id="Saving_State">Saving the  Layout State</h3>
        <p>SEE <a href="/tips.cfm#StateManagement">State Management</a> on the 
            <a href="/tips.cfm">Tips &amp; Tricks</a> page for an example of how 'layout state' can be persisted.</p>
</div>
<!-- end collapsible -->




<h2 id="Callback_Functions">Using Callback Functions</h2>
<div class="collapsible">

    <p>Callbacks can be set for open, close and resize events for each pane.
        The callback option can be:</p>
    <ul>
        <li><b>A function name</b>, eg: <tt>onresize: "doSomething, ['parameter']"</tt></li>
        <li><b>A pointer to a function</b>, eg: <tt>onresize: doSomething</tt></li>
        <li><b>An anonymous function</b>, eg: <tt>onresize: function(){ ... }</tt></li>
    </ul>

    <p>There are 5 types of pane-events that will trigger a callback:</p>
    <ul>
        <li><b>onhide</b> &ndash; fires when a pane is 'hidden' (different from 'closed')</li>
        <li><b>onshow</b> &ndash; fires when a pane is 'un-hidden'</li>
        <li><b>onopen</b> &ndash; fires when a pane is opened</li>
        <li><b>onclose</b> &ndash; fires when a pane is closed</li>
        <li><b>onresize</b> &ndash; fires when a pane is resized</li>
    </ul>
    <p></p>

    <p>EACH type of pane-event has 3 callback options, for example:</p>
    <ul>
        <li>onopen<b>_start</b> &ndash; a 'start' callback</li>
        <li>onopen<b>_end</b> &ndash; an 'end' callback</li>
        <li>onopen &ndash; <u>an alias</u> for the 'end' callback</li>
    </ul>

    <h3>Event 'Start' Callbacks</h3>

        <p>The 'start' callback fires BEFORE the event starts,
        so 'onopen_start' fires <i>before</i> the pane starts to open.</p>
        <p>If a 'start' callback function returns 'false', the event will be cancelled.</p>
<pre><code>
$("body").layout({
    onopen_start: function () {
        <i>// STOP the pane from opening</i>
        return false; <i>// false = Cancel</i>
    }
});
</code></pre>
        <p>NOTE: If an event is 'automatically triggered' by layout logic
        &ndash; like closing a pane when there is insufficient room &ndash;
        then the event cannot be cancelled.
        In this case, returning false will have no effect.</p>
        <p></p>

    <h3>Event 'End' Callbacks</h3>

        <p>The 'end' callback fires AFTER the event completes.
        So onopen_end will fire <i>after</i> the pane has opened, including the completion of all animations.</p>
        <p>Callback options without a suffix are really 'end' callbacks,
        so <b>onopen</b> <i>is the same as</i> <b>onopen_end</b>.
        These options exist for backwards compatibility, and for simpler code, 
        since most of the time it will be the 'end' callbacks you will use.</p>
        <p>NOTE: If BOTH 'onopen' and 'onopen_end' options are set,
        the 'onopen_end' option takes precidence and the 'onopen' option is ignored.</p>

    <h3 id="Callback_Parameters">Callback Parameters</h3>

        <p>Five parameters are <i>automatically</i> returned to all callback functions, in this order:</p>
        <ul>
            <li><strong>pane name</strong> - Always one of: &quot;north&quot;, &quot;south&quot;, &quot;east&quot; or &quot;west&quot;</li>
            <li><strong>pane element</strong> - The pane-element the callback was for, inside a jQuery wrapper</li>
            <li><strong>pane state</strong> - The 'state branch' for this pane, eg: <tt>state.north</tt></li>
            <li><strong>pane options</strong> - The 'option branch' for this pane, eg: <tt>options.north</tt></li>
            <li><strong>layout name</strong> - <i>If</i> a 'name' was specified when creating the layout, else returns an empty string.</li>
        </ul>
</div>
<!-- end collapsible -->




<h2 id="Style_Reference">Style Reference</h2>
<div class="collapsible">

    <h3 id="Generated_Classes">Auto-Generated Classes</h3>

        <p>When a layout is created, numerous CSS class-names are added to the original 'pane' elements, 
            as well as the generated 'resizer-bar' and 'toggler-button' elements.</p>
        <p>These options are used to set the 'base' class-names (default values shown):</p>

<code><pre>
paneClass:    "ui-layout-pane"
resizerClass: "ui-layout-resizer"
togglerClass: "ui-layout-toggler"
</pre></code>

        <p>Each of the 3 element types - panes, resizers and togglers - has <i>multiple</i> class-names 
            generated based on these options. Some classes change to indicate on whether the pane is 
            open or closed. This comprehensive set of auto-generated classes make it easy for CSS rules to 
            target all the elements as a group, specifically, and by 'state' (open/closed).</p>

        <p>Here are classes for all '<b>west</b>' elements, using the default class-names:</p>

        <p><strong>Pane Element</strong> (hard-coded DIV or IFRAME)</p>

        <ul>
            <li>ui-layout-pane</li>
            <li>ui-layout-pane-[PANE-NAME]</li>
            <li>ui-layout-pane-[PANE-STATE]</li>
            <li>ui-layout-pane-[PANE-NAME]-[PANE-STATE]</li>
        </ul>

        <p>This is the result when the auto-generated classes are added to the <b>west</b> pane:</p>

<code><pre>
&lt;div class="ui-layout-pane
            ui-layout-pane-west 
            ui-layout-pane-open
            ui-layout-pane-west-open"&gt;
</pre></code>

        <p>When the pane is 'closed', the last two classes CHANGE:</p>

<code><pre>
&lt;div class="...
            ui-layout-pane-closed
            ui-layout-pane-west-closed"&gt;
</pre></code>

        <p>NOTE: Each pane must have a <i>unique</i> 'paneSelector' in the HTML markup. 
            The default selector is a class-name, 
            eg: <tt>&lt;div class=&quot;</tt><b>ui-layout-west</b><tt>&quot;&gt;</tt>. 
            However, an ID or other class-name could be used instead, 
            so to avoid confusion with the auto-generated classes, 
            the &quot;ui-layout-west&quot; class-name is NOT INCLUDED in the code samples above.</p>

        <p><strong>Resizer Element</strong> (auto-generated DIV)</p>
        <ul>
            <li>ui-layout-resizer</li>
            <li>ui-layout-resizer-[PANE-NAME]</li>
            <li>ui-layout-resizer-[PANE-STATE]</li>
            <li>ui-layout-resizer-[PANE-NAME]-[PANE-STATE]</li>
        </ul>

        <p>This is the result when the auto-generated classes are added to the <b>west</b> resizer:</p>

<code><pre>
&lt;div class="ui-layout-resizer
            ui-layout-resizer-west 
            ui-layout-resizer-open
            ui-layout-resizer-west-open"&gt;
</pre></code>

        <p>When the pane is 'closed', the last two classes CHANGE:</p>

<code><pre>
&lt;div class="...
            ui-layout-resizer-closed
            ui-layout-resizer-west-closed"&gt;
</pre></code>

        <p>If a pane is 'slid open' - instead of being opened normally - two <i>additional</i> classes are generated:</p>
        <ul>
            <li>ui-layout-resizer-sliding</li>
            <li>ui-layout-resizer-west-sliding</li>
        </ul>

        <p>So this is the complete set of classes when the west pane is 'slid open':</p>

<code><pre>
&lt;div class="ui-layout-resizer
            ui-layout-resizer-west 
            ui-layout-resizer-open
            ui-layout-resizer-west-open
            <strong>ui-layout-resizer-sliding
            ui-layout-resizer-west-sliding</strong>"&gt;
</pre></code>

        <p>These extra classes allow the resizer-bar to be styled differenty when a pane is 'sliding'.
            For example, the resizer-bar could be grey when the pane is 'open' normally, 
            but transparent if it is 'slid open'.
        <p><strong>Toggler Element</strong> (auto-generated DIV)</p>
        <ul>
            <li>ui-layout-toggler</li>
            <li>ui-layout-toggler-[PANE-NAME]</li>
            <li>ui-layout-toggler-[PANE-STATE]</li>
            <li>ui-layout-toggler-[PANE-NAME]-[PANE-STATE]</li>
        </ul>

        <p>This is the result when the auto-generated classes are added to the <b>west toggler:</b></p>

<code><pre>
&lt;div class="ui-layout-toggler
            ui-layout-toggler-west 
            ui-layout-toggler-open
            ui-layout-toggler-west-open"&gt;
</pre></code>

        <p>When the pane is 'closed', the last two classes CHANGE:</p>

<code><pre>
&lt;div class="...
            ui-layout-toggler-closed
            ui-layout-toggler-west-closed"&gt;
</pre></code>

        <p>Using the default classes makes it easy to apply a 'layout theme'. 
            However, if there is more than one layout on a page, you may want to change the 
            class-name for <i>one of them</i> so each layout can have different CSS - for example: 
            The <a href="/demos/complex.html">complex demo</a> 
            uses custom class-names for the 'outer layout' to differentiate it from the 'inner layout', 
            which uses the default class-names.</p>


    <h3 id="Resizing_Classes">Classes Added During Resizing</h3>
        <p>When a pane is being &quot;resized&quot;, a <b>clone</b> 
            of the resizer-bar is created by ui.draggable. 
            During the dragging process, classes are added to both the <i>real</i> resizer-bar 
            (which does not move) and the <i>cloned</i> resizer-bar (which is 'dragging'). 
            When dragging is completed, the cloned element is deleted, the real resizer-bar is moved 
            to the new position, and the 'drag' classes are removed.</p>

        <p>These are the classes added to the west-pane elements <b>while resizing is in-progress</b>:</p>

        <p><b>REAL Resizer-bar</b></p>
        <ul>
            <li>ui-layout-resizer-drag</li>
            <li>ui-layout-resizer-west-drag</li>
        </ul>

        <p>The 'drag' classes are added to the 4 regular classes <i>already</i> on the resizer bar </p>

<code><pre>
class="ui-layout-resizer
       ui-layout-resizer-west
       ui-layout-resizer-open
       ui-layout-resizer-west-open
       <strong>ui-layout-resizer-drag
       ui-layout-resizer-west-drag</strong>"
</pre></code>

        <p><b>CLONED Resizer-bar</b></p>
        <ul>
            <li><i>ui-draggable-dragging</i> - this class is generated by ui.draggable when the clone is created</li>
            <li>ui-resizer-dragging</li>
            <li>ui-resizer-west-dragging</li>
        </ul>

        <p>The cloned bar <i>inherits</i> the 4 regular classes from the real resizer-bar 
            - the 'dragging' classes are added to these:</p>

<code><pre>
class="ui-layout-resizer
       ui-layout-resizer-west
       ui-layout-resizer-open
       ui-layout-resizer-west-open
       <strong>ui-draggable-dragging
       ui-layout-resizer-dragging 
       ui-layout-resizer-west-dragging</strong>"
</pre></code>

    <h3 id="Resizer_Graphics">Resizer &amp; Toggler Graphics</h3>
        <p>To use graphics for resizer-bars and toggler-buttons, 
            specify them as background-images in your CSS. 
            Different graphics and/or opacity can be specified for each 'state' 
            - open, closed, resizing and hover (using the :hover pseudo-class).</p>
        <p>The <a href="/demos/complex.html">complex demo</a> 
            uses a variety of colors, images and opacity to create a range of effects. 
            Pane-spacing can also be used to control appearance. 
            Each pane can have different options and be styled independant of the others.</p>

    <h3 id="Custom_Button_Classes">Custom Button Classes</h3>
        <p>If you add custom buttons using the layout utilities described below, 
            a number of additional styles are auto-generated for the button-elements.</p>
        <p>SEE <a href="#Utilities">Special Utility Methods</a> below for a list of the button classes.</p>
</div>
<!-- end collapsible -->




<h2 id="Auto-Generated_IDs">Auto-Generated IDs</h2>
<div class="collapsible">

    <p>If an ID is specified as a 'paneSelector', then the generated resizer-bar and 
    toggler-button for that pane are <i>automatically</i> given corresponding IDs, for example...</p>

    <p>If these options are used when creating a layout...</p>

<code><pre>
layout({
    north__paneSelector: "<strong>#header</strong>"
,   west__paneSelector:  "<strong>#Menu</strong>"
});
</pre></code>

    <p>The associated resizer and toggler elements will be given a similar ID - by appending 
        &quot;-resizer&quot; or &quot;-toggler&quot; to the ID of the 'pane'...</p>

<code><pre>
// resizer & toggler for the NORTH ('header') pane
&lt;div id="<strong>header-resizer</strong>" class="..."&gt;
    &lt;div id="<strong>header-toggler</strong>" class="..."&gt;&lt;/div&gt;
&lt;/div&gt;

// resizer & toggler for the WEST ('menu') pane
&lt;div id="<strong>Menu-resizer</strong>" class="..."&gt;
    &lt;div id="<strong>Menu-toggler</strong>" class="..."&gt;&lt;/div&gt;
&lt;/div&gt;
</pre></code>

    <p><b>NOTE</b>: This does not affect the auto-generated 'class-names' added to the elements.</p>
</div>
<!-- end collapsible -->




<h2 id="Content-Scrolling">Content-Scrolling (Headers &amp; Footers)</h2>
<div class="collapsible">

    <p>There are 2 options for this feature (class-names shown are defaults):</p>
    <ul>
        <li><b>contentSelector</b> = &quot;.ui-layout-content&quot;</TT></li>
        <li><b>contentIgnoreSelector</b> = &quot;.ui-layout-ignore&quot;</TT></li>
    </ul>

    <p>When initializing a pane, the layout code searches for: <tt>$Pane.children(s.contentSelector)</tt>. 
        If a content element is found (usually a div or an iframe), it will be <i>auto-sized</i> 
        to fill the vertical space not used by other child-elements. If the space is not enough 
        to display all the content, then the content element will 'scroll'.</p>

    <p>This makes all elements <i>above</i> the content element look like a 'header', 
        and everything below like a 'footer'. 
        All this is done by just dynamically <i>resizing</i> the content element - there is no special CSS, 
        and no other elements are touched.</p>

    <p>The content element can have <i>unlimited</i> siblings - header, subheader, footer, etc. 
        The code loops through all other elements to calculate the height that remains to fit the 
        content element. If there is <i>not enough room</i>, the content element is completely hidden.</p>

    <p>To exclude an element(s) from the height calculations - like an absolutely positioned element - 
        add a selector for it/them in the <tt>contentIgnoreSelector</tt> option. 
        Anything matching this selector is 'ignored' when measuring.</p>

    <p>The content element is resized every time the pane containing it is resized or opened. 
        You can also manually trigger a resize from your own code using the resizeContent() method, eg:</p>

<code><pre>
myLayout.resizeContent("west");
</pre></code>

</div>
<!-- end collapsible -->




<h2 id="Utilities">Special Utility Methods</h2>
<div class="collapsible">

    <p>A number of utility methods are provided to integrate custom buttons and other code with your layout. 
        These utilities are available as 'methods' of the layout instance.</p>

    <p>All sample code below assumes the layout-instance is assigned to 'myLayout', like so:</p>

<code><pre>
var myLayout = $("body").layout();
</pre></code>

    <h3 id="Custom_Buttons">Creating Custom Toggler Buttons</h3>

        <h4>Hard-Coding Buttons</h4>
            <p>Custom buttons can be hard-coded in HTML by using basic layout methods:</p>

<code><pre>
&lt;button onclick="myLayout.toggle('west')"&gt;
    Toggle West Pane&lt;/button&gt;

&lt;img onclick="myLayout.open('west')"
    src="img/open_button.gif"&gt;

&lt;span onClick="myLayout.close('west')&gt;
    Close West Pane&lt;/span&gt;
</pre></code>

            <p>SEE the <a href="/demos/simple.html">simple demo</a> for samples of hard-coded buttons.</p>

            <h5 class="withNext"><b>addToggleBtn(</b> selector, pane <b>)</b></h5>
            <h5 class="withNext"><b>addCloseBtn(</b>  selector, pane <b>)</b></h5>
            <h5><b>addOpenBtn(</b>   selector, pane <b>)</b></h5>

            <blockquote>
                <p>These 3 utilities provide <i>another way</i> to create buttons to open and close panes. 
                    First create the element(s) to use as a button, then call the utility you want and pass these parameters:</p>
                <ul>
                    <li><b>selector</b> - a jQuery selector string to access the button element(s)</li>
                    <li><b>pane</b> - the pane the button is to control: &quot;north&quot;, &quot;south&quot;, &quot;east&quot; or &quot;west&quot;</li>
                </ul>

                <p>Location does not matter, so a button in the north-pane (eg, a toolbar)
                    can toggle the east-pane (eg, a help-panel).</p>
                <p>Examples using 'ID' and 'class' selectors for button-elements:</p>

<code><pre>
addOpenBtn("#tbarShowHelpButton", "east");

addToggleBtn(".ui-layout-pane-north .custom-toggle-button"
             , "west");
</pre></code>

                <p>Two classes are automatically added to the button-element, based on the <b>buttonClass</b> option, 
                    which has a default value of &quot;<b>ui-layout-button</b>&quot;:</p>
                <ul>
                    <li>ui-layout-button-ACTION</li>
                    <li>ui-layout-button-ACTION-PANE</li>
                </ul>

                <p>Examples for each type of button - assumes buttons control the 'west pane':</p>

<code><pre>
class="ui-layout-button-toggle
       ui-layout-button-toggle-west"

class="ui-layout-button-close
       ui-layout-button-close-west"

class="ui-layout-button-open
       ui-layout-button-open-west"
</pre></code>

                <p>SEE the <a href="/demos/complex.html">complex demo</a> 
                    - the square 'close' buttons in the east/west panes utilize these utilities.</p>
            </blockquote>

            <h5><b>addPinBtn(</b> selector, pane <b>)</b></h5>

                <blockquote>
                    <p>This utility makes an element act like a 'pin button' &nbsp; a common and intuitive interface device.</p>

                    <p>SEE the <a href="/demos/complex.html">complex demo</a> to see how pin-buttons work.</p>

                    <p>Classes similar to the utilities above are added, plus two additional classes to indicate the 
                        'current state' of the pin (up/down):</p>
                    <ul>
                        <li>ui-layout-button-pin</li>
                        <li>ui-layout-button-pin-west</li>
                        <li>ui-layout-button-pin-up</li>
                        <li>ui-layout-button-pin-west-up</li>
                    </ul>

                    <p>When the pin is 'down' (pinned), the last two classes change to:</p>
                    <ul>
                        <li>ui-layout-button-pin-down</li>
                        <li>ui-layout-button-pin-west-down</li>
                    </ul>

                    <p>These classes can be used to change the background-image via CSS, as is done in the 
                        <a href="/demos/complex.html">complex demo</a>.</p>
                </blockquote>

        <h3 id="Drop-Downs">Working with Drop-Downs and Pop-Ups</h3>

            <p>When a layout is created, each pane becomes a container for all the elements inside it. 
                Elements that need to 'popup', like a dialog box, should be put in the 'body' of the page -  
                <u>not</u> inside one of the panes. This allows the popup to <i>overlay</i> all the panes.</p>
            <p>However, sometimes a popup or drop-down (like a 'menu') needs to originate from <i>inside</i> a pane.
                For example, the north-pane may hold a toolbar with drop-down menus that need to appear
                <i>over-top</i> of the panes below. For this to work, the pane containing the 
                drop-down element must:</p>
            <ol>
                <li>have the style 'overflow: visible', and</li>
                <li>have a 'stack-order' that is higher than the panes below</li>
            </ol>

            <p><b>NOTE</b>: The z-index of the popup element itself is irrelevant <i>outside</i> the pane.
                It is the pane that contains the popup element that must be 'above' the adjacent panes.
                Since pane-animations change their z-indexes, setting z-index in your CSS <u>will not work</u>.</p>

            <p>If you have a layout where only 1-pane has popups, then just put that pane 
                '<b>last</b>' in your HTML mark-up, and give it the style: 'overflow: visible'. 
                This will make all popups and drop-downs from <i>that pane</i> work normally.</p>

            <p>However, if you have a layout with drop-downs or popups in <i>multiple panes</i>, 
                then this pair of layout utilities provide a solution...</p>

            <h5 class="withNext"><b>allowOverflow(</b> elem_or_pane <b>)</b></h5>
            <h5><b>resetOverflow(</b> elem_or_pane <b>)</b></h5>

            <blockquote>
                <p>The <b>allowOverflow</b> utility raises a pane's z-index so popups work properly.</p>

                <p>The 'elem_or_pane' parameter can be either:</p>
                <ul>
                    <li>The 'pane element', or a 'decendant element' of the pane, that contains the popup, or</li>
                    <li>The 'name' of the pane containing the popup, ie: &quot;north&quot;, &quot;south&quot;, &quot;east&quot;, &quot;west&quot; or &quot;center&quot;</li>
                </ul>

                <p>The <b>resetOverflow</b> utility puts the pane back to its normal z-index. 
                    It accepts the same parameter as allowOverflow, and <i>should</i> be called when the popup closes. 
                    However, when allowOverflow is called, all other panes are <i>automatically</i> reset anyway.</p>
                <p>Examples:</p>

<code><pre>
<i>// using a 'list' mouse-over event</i>
&lt;ul onmouseover="myLayout.allowOverflow(this)" 
  onmouseout="myLayout.resetOverflow(this)"&gt;

<i>// using the 'pane' mouse-over event</i>
&lt;div class="ui-layout-north"
  onmouseover="myLayout.allowOverflow(this)")&gt;

<i>// called from the code that initiates a popup</i>
myLayout.allowOverflow('north');
showMyPopup();
</pre></code>

                <p>The allowOverflow method can also be <i>automatically attached</i> to panes using the
                    <b>showOverflowOnHover</b> option. This makes things more automatic, but
                    there are some scenarios where you need to control this from in your code. 
                <p>SEE the <a href="/demos/simple.html">simple demo</a> 
                    for working examples of pop-ups and drop-downs.</p>
                <p><b>NOTE</b>: Using allowOverflow on a 'scrolling pane' causes the scrollbar to 
                    disappear and the pane contents to 'overflow' on top of the pane below. 
                    This can be seen by hovering the pop-up in the East pane of the 
            <a href="/demos/simple.html">simple demo</a>.           </blockquote>
</div>
<!-- end collapsible -->




<p>&nbsp;</p>
<hr>
<p class="bold">
    <a href="#" onClick="return openAllSections()">Open All Sections</a> &nbsp;
    <a href="#" onClick="return closeAllSections()">Close All Sections</a>
    <br>&nbsp;
</p>

</div>

<!--
    =======================
    *   TABLE OF CONTENTS  *
    =======================
-->
<div class="ui-layout-west" style="display: none;">
    <div class="header">Contents</div>
    <div class="ui-layout-content" style="overflow: auto;">
        <ul id="TOC">
            <li><a href="#top">UI Layout</a></li>
            <li><a href="#Depends_on">Depends on</a></li>
            <li><a href="#Browsers">Supported Browsers</a></li>
            <li><a href="#Demos">Demos</a></li>
            <li><a href="#Example">Example</a></li>
            <li><span class="tocBtn"></span><a href="#Terminology">Terminology</a>
                <ul>
                    <li><a href="#Container">Container</a></li>
                    <li><a href="#Panes">Panes</a></li>
                    <li><a href="#Pane_Spacing">Pane Spacing</a></li>
                    <li><a href="#Resizer">Resizer / Resizer-bar</a></li>
                    <li><a href="#Slider">Slider / Slider-bar</a></li>
                    <li><a href="#Toggler">Toggler / Toggler-button</a></li>
                </ul>
            </li>
            <li><span class="tocBtn"></span><a href="#Properties_Methods">Layout Properties &amp; Methods</a>
                <ul>
                    <li><a href="#Properties">Properties</a></li>
                    <li><a href="#Methods">Methods</a></li>
                    <li><a href="#Utility_Methods">Utility Methods</a></li>
                </ul>
            </li>
            <li><span class="tocBtn"></span><a href="#Options">Options</a>
                <ul>
                    <li><a href="#Sub-Key_Format">Sub-Key Format for Options</a></li>
                    <li><a href="#List_Format">List Format for Options</a></li>
                    <li><a href="#Option_Specificity">Option Specificity</a></li>
                    <li><a href="#Selector_Options">Selector Options</a></li>
                    <li><a href="#Class_Options">Class Options</a></li>
                    <li><a href="#List_of_Options"><b>List of Options</b></a></li>
                </ul>
            <li><span class="tocBtn"></span><a href="#Layout_State">Reading the Layout-State</a>
                <ul>
                    <li><a href="#Logic_Vars">Auto-Generated Logic-vars</a></li>
                    <li><a href="#Reading_Size">Reading Pane-Size</a></li>
                    <li><a href="#Saving_State">Saving the  Layout State</a></li>
                </ul>
            </li>
            <li><span class="tocBtn"></span><a href="#Callback_Functions">Using Callback Functions</a>
                <ul>
                    <li><a href="#Callback_Parameters">Callback Parameters</a></li>
                </ul>
            <li><span class="tocBtn"></span><a href="#Style_Reference">Style Reference</a>
                <ul>
                    <li><a href="#Generated_Classes">Auto-Generated Classes</a></li>
                    <li><a href="#Resizing_Classes">Classes Added During Resizing</a></li>
                    <li><a href="#Resizer_Graphics">Resizer &amp; Toggler Graphics</a></li>
                    <li><a href="#Custom_Button_Classes">Custom Button Classes</a></li>
                </ul>
            </li>
            <li><a href="#Auto-Generated_IDs">Auto-Generated IDs</a></li>
            <li><a href="#Content-Scrolling">Content-Scrolling <span style="font-size: 0.8em; white-space: nowrap;">&nbsp;(Headers &amp; Footers)</span></a></li>
            <li><span class="tocBtn"></span><a href="#Utilities">Special Utility Methods</a>
                <ul>
                    <li><a href="#Custom_Buttons">Creating Custom Toggler Buttons</a></li>
                    <li><a href="#Drop-Downs">Working with Drop-Downs and Pop-Ups</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>

</body>
</html>