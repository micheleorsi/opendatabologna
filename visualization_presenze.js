function drawVisualization1() {
        // Create and populate the data table.
    	  var wrapper = new google.visualization.ChartWrapper({
    		    chartType: 'ColumnChart',
    		    dataTable: [nomi_presenze_totali, presenze_presenze_totali],
    		    options: {'title': 'Presenze consiglieri sul totale',
    		    	'legend':'none'},
    		    containerId: 'visualization1'
    		  });
    		  wrapper.draw();
      }

function drawVisualization2() {
    // Create and populate the data table.
	  var wrapper = new google.visualization.ChartWrapper({
		    chartType: 'ColumnChart',
		    dataTable: [nomi_presenze_question_time, presenze_presenze_question_time],
		    options: {'title': 'Presenze consiglieri al question time del venerdi',
		    	'legend':'none'},
		    containerId: 'visualization2'
		  });
		  wrapper.draw();
  }

function drawVisualization3() {
    // Create and populate the data table.
	  var wrapper = new google.visualization.ChartWrapper({
		    chartType: 'ColumnChart',
		    dataTable: [nomi_presenze_consiglio_ordinario,presenze_presenze_consiglio_ordinario],
		    options: {'title': 'Presenze consiglieri al consiglio ordinario del lunedi',
		    	'legend':'none'},
		    containerId: 'visualization3'
		  });
		  wrapper.draw();
  }

function drawVisualization4() {
    // Create and populate the data table.
	  var wrapper = new google.visualization.ChartWrapper({
		    chartType: 'ColumnChart',
		    dataTable: [nomi_presenze_consiglio_straordinario,presenze_presenze_consiglio_straordinario],
		    options: {'title': 'Presenze consiglieri a consigli straordinari',
		    	'legend':'none'},
		    containerId: 'visualization4'
		  });
		  wrapper.draw();
  }
