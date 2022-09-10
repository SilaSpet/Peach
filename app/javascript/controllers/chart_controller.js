import { Controller } from "@hotwired/stimulus"
import {
  Chart,
  ArcElement,
  LineElement,
  BarElement,
  PointElement,
  BarController,
  BubbleController,
  DoughnutController,
  LineController,
  PieController,
  PolarAreaController,
  RadarController,
  ScatterController,
  CategoryScale,
  LinearScale,
  LogarithmicScale,
  RadialLinearScale,
  TimeScale,
  TimeSeriesScale,
  Decimation,
  Filler,
  Legend,
  Title,
  Tooltip,
  SubTitle
} from 'chart.js';

export default class extends Controller {
  static values = {
    labels: Array,
    datasets: Array
  }

  initialize() {
    Chart.register(
      ArcElement,
      LineElement,
      BarElement,
      PointElement,
      BarController,
      BubbleController,
      DoughnutController,
      LineController,
      PieController,
      PolarAreaController,
      RadarController,
      ScatterController,
      CategoryScale,
      LinearScale,
      LogarithmicScale,
      RadialLinearScale,
      TimeScale,
      TimeSeriesScale,
      Decimation,
      Filler,
      Legend,
      Title,
      Tooltip,
      SubTitle
    );
  }

  connect() {
    const data = {
      labels: this.labelsValue,
      datasets: this.datasetsValue
    }

    const config = {
      type: 'line',
      data: data,
      options: {
        responsive: true,
        interaction: {
          intersect: false,
        },
      }
    }

    new Chart(
      this.element,
      config
    )
  }
}
