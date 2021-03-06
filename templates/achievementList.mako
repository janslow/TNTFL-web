<%page args="achievements"/>
<div class="row">
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h2 class="panel-title">Achievements</h2>
        </div>
        <div class="panel-body">
          <div class="row">
% for ach, count in achievements:
            <div class="col-md-4">
              <div class="panel panel-default panel-achievement">
                <div class="panel-heading">
                  <h3 class="panel-title">${ach.name}</h3>
                </div>
                <div class="panel-body achievement-${ach.__name__}">
                  ${ach.description} - <b>${count}</b>
                </div>
              </div>
            </div>
% endfor
          </div>
        </div>
      </div>
    </div>
</div>
