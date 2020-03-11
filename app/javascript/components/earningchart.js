import Rails from '@rails/ujs';
import Chartkick from 'chartkick';

const refreshChart = () => {
  const REFRESH_INTERVAL = 10000;
  const wrapper = document.getElementById('chartearning');

  setInterval(() => {
    Rails.ajax({
      url: `/livecasts/${wrapper.dataset.livecast}/chart_data`,
      type: 'GET',
      success: function(data) {
        const chart = Chartkick.charts["chart-1"];
        chart.updateData(data.earning);
      },
      error: function(data) {}
    });
  }, REFRESH_INTERVAL);
}

export { refreshChart };

  new Chartkick["ColumnChart"]("chart-1", [["19:17",150]], {});
