import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class StatisticsChart extends StatefulWidget {
  const StatisticsChart({super.key});

  @override
  State<StatisticsChart> createState() => _StatisticsChartState();
}

class _StatisticsChartState extends State<StatisticsChart> {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 18,
          left: 12,
          bottom: 12,
        ),
        child: LineChart(mainData(),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = AppStyles.styleMedium14(context).copyWith(
      color: const Color(0xFFA0A0A0)
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text =  Text('8/04', style: style);
        break;
      case 2:
        text =  Text('9/04', style: style);
        break;
      case 3:
        text =  Text('10/04', style: style);
        break;
      case 4:
        text =  Text('11/04', style: style);
        break;
      case 5:
        text =  Text('12/04', style: style);
        break;
      case 6:
        text =  Text('13/04', style: style);
        break;
      case 7:
        text =  Text('14/04', style: style);
        break;
      default:
        text =  Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = AppStyles.styleMedium14(context).copyWith(
        color: const Color(0xFFA0A0A0)
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0K';
        break;
      case 1:
        text = '10K';
        break;
      case 2:
        text = '20k';
        break;
      case 3:
        text = '30k';
        break;
      case 4:
        text = '40k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.white,
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            return touchedBarSpots.map((barSpot) {
              return LineTooltipItem(
                '${barSpot.y}',
                const TextStyle(color: Color(0xFF5F1ED9), fontWeight: FontWeight.bold), // change the tooltip text color and style
              );
            }).toList();
          },
        ),
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xffF4F4F4),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xffF4F4F4),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 25,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 30,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 8,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(

          spots: const [
            FlSpot(0, 0),
            FlSpot(.5, .3),
            FlSpot(1.2, 1.2),
            FlSpot(2, .8),
            FlSpot(2.8, 2),
            FlSpot(3.8, 1.3),
            FlSpot(4.9, 3.5),
            FlSpot(5.5, 3.5),
            FlSpot(6.2, 1.5),
            FlSpot(6.9, .9),
            FlSpot(8, 2),
          ],
          isCurved: true,
          color:  const Color(0xFF5F1ED9),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
        ),

      ],
    );
  }
}


