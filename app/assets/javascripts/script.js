/*

My Custom JS
============

Author:  Brad Hussey
Updated: August 2013
Notes:	 Hand coded for Udemy.com

*/


/* Show More/Less Hints and Tips Section
Check out - http://jsfiddle.net/Mottie/6Qw7k/
*/
var numShown = 3; // Initial rows shown & index
var numMore = 3;  // Increment

var $table = $('table').find('tbody');  // tbody containing all the rows
var numRows = $table.find('tr').length; // Total # rows

$(function () {
    // Hide rows and add clickable div
    $table.find('tr:gt(' + (numShown - 1) + ')').hide().end()
        .after('<tbody id="more"><tr><td colspan="' +
            $table.find('tr:first td').length + '"><div class="showMore-button"><a href="#">Show <span>' +
             '</span> More</a></div</tbody></td></tr>');

    $('#more').click(function() {
        numShown = numShown + numMore;
        // no more "show more" if done
        if (numShown >= numRows) {
            $('#more').remove();
        }
        // change rows remaining if less than increment
        if (numRows - numShown < numMore) {
            $('#more span').html(numRows - numShown);
        }
        $table.find('tr:lt(' + numShown + ')').show();
    });

});