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

//function drawVisualization2() {
//    // Create and populate the data table.
//	  var wrapper = new google.visualization.ChartWrapper({
//		    chartType: 'ColumnChart',
//		    dataTable: [nomi_presenze_question_time, presenze_presenze_question_time],
//		    options: {'title': 'Percentuale votazioni consiglieri',
//		    	'legend':'none'},
//		    containerId: 'visualization2'
//		  });
//		  wrapper.draw();
//  }

