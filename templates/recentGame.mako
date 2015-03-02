        <div class="recent-game container-fluid">
          <div class="row">
          <div class="col-md-4 red-player">${game.redPlayer}</div>
          <div class="col-md-4">${game.redScore} - ${game.blueScore}</div>
          <div class="col-md-4 blue-player">${game.bluePlayer}</div>
          </div>
          <div class="row">
            <div class="col-md-4">${"<span class=\"skill-change skill-change-red\">{:+.3f}</span>".format(-game.skillChangeToBlue) if game.skillChangeToBlue <= 0 else ""}</div>
            <div class="col-md-4">${game.formatTime(game.time)}</div>
            <div class="col-md-4">${"<span class=\"skill-change skill-change-blue\">{:+.3f}</span>".format(game.skillChangeToBlue) if game.skillChangeToBlue > 0 else ""}</div>
          </div>
        </div>