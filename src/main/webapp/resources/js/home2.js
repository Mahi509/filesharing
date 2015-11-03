var pager = new Imtech.Pager();

$(document).ready(function() {

    pager.paragraphsPerPage = 5; // set amount elements per page

    pager.pagingContainer = $('#content'); // set of main container

    pager.paragraphs = $('div.z', pager.pagingContainer); // set of required containers

    pager.showPage(1);

});