function drawVisualization1() {
        // Create and populate the data table.
    	  var wrapper = new google.visualization.ChartWrapper({
    		    chartType: 'ColumnChart',
    		    dataTable: [nomi_votazioni_totali, presenze_votazioni_totali],
    		    options: {'title': 'Votazioni consiglieri',
    		    	'legend':'none'},
    		    containerId: 'visualization1'
    		  });
    		  wrapper.draw();
      }