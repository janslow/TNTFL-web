<%! title = "" %>
<%inherit file="html.mako" />
<div class="container-fluid">
  <div class="row">
    <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-body" id="ladderHolder">
          ${self.blocks.render("ladder", base=self.attr.base)}
        </div>
        <script type="text/javascript">
          setInterval(
            function() {
              var sortOpts = getSortOptions("#ladder th");
              var showInactive = 0;
              $("#showInactiveButtons").each(function(index) {
                if ($(this).hasClass('inactive') && $(this).style.display == "table-row") {
                  showInactive = 1;
                }
              });
              $("#ladderHolder").load("ladder.cgi?sortCol=" + sortOpts[0][0] + "&sortOrder="+sortOpts[0][1] + "&showInactive=" + showInactive)
            },
            600000
          );
        </script>
      </div>
    </div>
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h2 class="panel-title">Recent Games</h2>
        </div>
        <div class="panel-body" id="recentHolder">
          ${self.blocks.render("recent", base=self.attr.base, games=ladder.games)}
        </div>
        <script type="text/javascript">
          var sortOpts = getSortOptions("#ladder th");
          var showInactive = 0;
          $("#showInactiveButtons").each(function(index) {
            if ($(this).hasClass('inactive') && $(this).style.display == "table-row") {
              showInactive = 1;
            }
          });
          postLadder(sortOpts, showInactive);
          setInterval(function() {$("#recentHolder").load("recent.cgi")}, 600000);
        </script>
      </div>
    </div>
  </div>
</div>
