<%@ Page Title="Anonymous Chuck" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="randomization.aspx.cs" Inherits="Text_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<img src="actionjeans_web.jpg" width="840px" />
<div id="text-box0">
    <div id="text-content0"></div> <!--random text goes here-->
    <!--<a href="javascript:;" id="A1"><em>randomize</em></a>  reload link --> 
</div>
<div id="text-box1">
    <div id="text-content1"></div> <!--random text goes here-->
    <!--<a href="javascript:;" id="A1"><em>randomize</em></a>  reload link --> 
</div>
<div id="text-box2">
    <div id="text-content2"></div> <!--random text goes here-->
    <!--<a href="javascript:;" id="A1"><em>randomize</em></a>  reload link --> 
</div>
<script type="text/javascript">
$(document).ready( function() {
    var textArray = [
  'Frequently-used codes are mnemonic, so that he seldom consults his code book.',
  'Chuck Norris was banned from competitive bullriding after a 1992 exhibition in San Antonio, when he rode the bull 1,346 miles from Texas to Milwaukee Wisconsin to pick up his dry cleaning.',
  'Moreover, he has supplemental levers. On deflecting one of these levers to the right he runs through the book before him.',
  'On a high school math test, Chuck Norris put down "Violence" as every one of the answers. He got an A+ on the test because Chuck Norris solves all his problems with Violence.',
  'But when he does, a single tap of a key projects it for his use.',
  'When Chuck Norris thinks of the phrase "music to my ears" he does not think of children playing or laughing, he thinks of the funny noise his victims it makes when he squishes someone\'s head with a roundhouse kick ',
  'Each page in turn is projected at a speed which just allows a recognizing glance at each.',
  'The development of reproduction has had another, more subtle consequence.',
  'Chuck Norris\' tears cure cancer. Too bad he has never cried.',
  'In an album or an art book, objects are generally reproduced in more or less the same format.',
  'The limitations of the printed page are such that a reclining Buddha over sixty feet in length may appear.',
  'Proponents of higher-order theories of consciousness argue that consciousness is explained by the relation between two levels of mental states in which a higher-order mental state takes another mental state. If you mention this to Chuck Norris, expect an explosive roundhouse kick to the face for spouting too much fancy-talk.',
  'To be about four times the size of a Tanagra figurine.',
  'The works reproduced lose their relative proportions.',
  'If he deflects it further to the right, he steps through the book 10 pages at a time; still further at 100 pages at a time.',
  'Chuck Norris played Russian Roulette with a fully loaded gun and won.',
  'Deflection to the left gives him the same control backwards.',
  'It is of no importance that a large statue should become small: it simply becomes a commonplace document.',
  'If you have five dollars and Chuck Norris has five dollars, Chuck Norris has more money than you. ',
  'And we are unlikely to make a mistake about its true nature.',
  'Chuck Norris can sneeze with his eyes open. ',
  'But the enlargement of seals, of coins, of amulets, of figurines creates truly fictitious arts, now becomes a style, free, and modern in its accent.',
  'The unfinished quality of the execution results from the very small scale of these objects.',
  'Chuck Norris can kill two stones with one bird. ',
  'A special button transfers him immediately to the first page of the index.',
  'Chuck Norris destroyed the periodic table, because he only recognizes the element of surprise.'
    ];
    $('#text-content0').loadText( textArray, 7000 ); // ( array, interval )
});
// custom jquery plugin loadText()
$.fn.loadText = function( textArray, interval ) {
    return this.each( function() {
        var obj = $(this);
        obj.fadeOut( 'slow', function() {
            obj.empty().html( random_array( textArray ) );
            obj.fadeIn( 'slow' );
        });
        timeOut = setTimeout( function(){ obj.loadText( textArray, interval )}, interval );
        // reload random text (if not animated) -- entirely optional, can be removed, along with the reload link above (<a href="javascript:;" id="text-reload"><em>randomize</em></a>)
        $("#text-reload").click( function(){
            if( !obj.is(':animated') ) { clearTimeout( timeOut ); obj.loadText( textArray, interval );} // animation check prevents "too much recursion" error in jQuery
        });
    });
}
//public function
function random_array( aArray ) {
    var rand = Math.floor( Math.random() * aArray.length + aArray.length );
    var randArray = aArray[ rand - aArray.length ];
    return randArray;
}
</script>

<script type="text/javascript">
    $(document).ready(function () {
        var textArray = [
         'Any given book of his library can thus be called up and consulted with far greater facility than if it were taken from a shelf.',
  'When the Boogeyman goes to sleep every night, he checks his closet for Chuck Norris.',
  'Chuck Norris doesn\'t read books. He stares them down until he gets the information he wants.',
  'As he has several projection positions, he can leave one item in position while he calls up another.',
  'There is no theory of evolution. Just a list of creatures Chuck Norris has allowed to live.',
  'Chuck Norris is currently suing NBC, claiming Law and Order are trademarked names for his left and right legs.',
  'He can add marginal notes and comments, taking advantage of one possible type of dry photography.',
  'Chuck Norris is the reason why Waldo is hiding.',
  'And it could even be arranged so that he can do this by a stylus scheme such as is now employed in the telautograph seen in railroad waiting rooms, just as though he had the physical page before him..',
  'Chuck Norris counted to infinity - twice.',
  'Contrary to popular belief, America is not a democracy, it is a Chucktatorship.',
  'There is no chin behind Chuck Norris’ beard. There is only another fist.',
  'You have the right to remain silent. Anything you say will be misquoted, then used against you.',
  'When Chuck Norris looks in the mirror nothing appears. There can never be a second Chuck Norris.',
  'Chuck Norris does not age. Every birthday, it\'s just another year added to his existence, which sucks for you.',
  'Painting exceeds its frame and is realized in polychrome marble sculpture.',
  'And sculpture goes beyond itself by being achieved in architecture.',
  'Chuck Norris once played 18 holes of golf using a 12 inch strip of rebar and a sun dried tomato. He shot a 54.'
    ];
        $('#text-content1').loadText(textArray, 15000); // ( array, interval )
    });
    // custom jquery plugin loadText()
    $.fn.loadText = function (textArray, interval) {
        return this.each(function () {
            var obj = $(this);
            obj.fadeOut('slow', function () {
                obj.empty().html(random_array(textArray));
                obj.fadeIn('slow');
            });
            timeOut = setTimeout(function () { obj.loadText(textArray, interval) }, interval);
            // reload random text (if not animated) -- entirely optional, can be removed, along with the reload link above (<a href="javascript:;" id="text-reload"><em>randomize</em></a>)
            $("#text-reload").click(function () {
                if (!obj.is(':animated')) { clearTimeout(timeOut); obj.loadText(textArray, interval); } // animation check prevents "too much recursion" error in jQuery
            });
        });
    }
    //public function
    function random_array(aArray) {
        var rand = Math.floor(Math.random() * aArray.length + aArray.length);
        var randArray = aArray[rand - aArray.length];
        return randArray;
    }
</script>

<script type="text/javascript">
    $(document).ready(function () {
        var textArray = [
  'And, in turn, architecture discovers a frame in the facade.',
  'Chuck Norris can drown a fish.',
  'But the frame itself becomes detached from the inside.',
  'Godzilla is a Japanese rendition of Chuck Norris\' first visit to Tokyo.',
  'And established relations with the surroundings so as to realise architecture in city planning. ',
  'From one end of the chain to the other, the painter has become an urban designer.',
  'Chuck Norris once visited the Virgin Islands. They are now The Islands.',
  'This extensive unity of the arts forms a universal theater that includes air and earth, and even fire and water.',
  'When Chuck Norris answers the phone, he just says "Go". This is not permission for you to begin speaking, it is your cue to start running for your life.',
  'In it, sculptures play the role of the real characters.',
  'The saddest moment for a child is not when he learns Santa Claus isn\'t real, it\'s when he learns Chuck Norris is.',
  'And the city decor in which spectators are themselves painted images or figurines. ',
  'Chuck Norris\' calendar goes straight from March 31st to April 2nd; no one fools Chuck Norris.',
  'The sum of the arts becomes the Socius. ',
  'Guns don\'t kill people. Chuck Norris kills People.',
  'The public social space inhabited by Baroque dancers.',
  'The quickest way to a man\'s heart is with Chuck Norris\' fist.',
  'Chuck Norris can win a game of Connect Four in only three moves.',
  'Chuck Norris invented Kentucky Fried Chicken\'s famous secret recipe, with eleven herbs and spices. But nobody ever mentions the twelfth ingredient: Fear.',
  'Chuck Norris uses pepper spray to spice up his steaks.',
  'Crop circles are Chuck Norris\' way of telling the world that sometimes corn needs to lie down.',
  'Chuck Norris can win a game of Connect Four in only three moves.',
  'Chuck Norris doesn\'t churn butter. He roundhouse kicks the cows and the butter comes straight out.'
    ];
        $('#text-content2').loadText(textArray, 4000); // ( array, interval )
    });
    // custom jquery plugin loadText()
    $.fn.loadText = function (textArray, interval) {
        return this.each(function () {
            var obj = $(this);
            obj.fadeOut('slow', function () {
                obj.empty().html(random_array(textArray));
                obj.fadeIn('slow');
            });
            timeOut = setTimeout(function () { obj.loadText(textArray, interval) }, interval);
            // reload random text (if not animated) -- entirely optional, can be removed, along with the reload link above (<a href="javascript:;" id="text-reload"><em>randomize</em></a>)
            $("#text-reload").click(function () {
                if (!obj.is(':animated')) { clearTimeout(timeOut); obj.loadText(textArray, interval); } // animation check prevents "too much recursion" error in jQuery
            });
        });
    }
    //public function
    function random_array(aArray) {
        var rand = Math.floor(Math.random() * aArray.length + aArray.length);
        var randArray = aArray[rand - aArray.length];
        return randArray;
    }
</script>

</asp:Content>

