import 'package:evote_client/polls_client.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatefulWidget {
  final GFetchPollData_polls poll;
  final int pollVoters;

  const PieChart({Key? key, required this.poll, required this.pollVoters})
      : super(key: key);

  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return _buildDefaultPieChart();
  }

  SfCircularChart _buildDefaultPieChart() {
    return SfCircularChart(
      title: ChartTitle(
          text: 'percentages of votes by Candidate in ' +
              widget.poll.title +
              ' poll'),
      legend: Legend(
        isVisible: true,
        overflowMode: LegendItemOverflowMode.wrap,
      ),
      series: _getDefaultPieSeries(),
    );
  }

  List<PieSeries<ChartData, String>> _getDefaultPieSeries() {
    final List<ChartData> pinData2 = widget.poll.candidate
            ?.where((p0) => p0.voters?.isNotEmpty ?? true)
            .map((p0) {
          final per = (((p0.voters?.length ?? 1) * 100) /(widget.pollVoters) );
          var per2 = per.toStringAsFixed(1);
          return ChartData(x: p0.username, y: per, text: per2);
        }).toList() ??
        List.empty(growable: false);

    return <PieSeries<ChartData, String>>[
      PieSeries<ChartData, String>(
          explode: true,
          explodeIndex: 0,
          explodeOffset: '10%',
          dataSource: pinData2,
          xValueMapper: (ChartData data, _) => data.x as String,
          yValueMapper: (ChartData data, _) => data.y,
          dataLabelMapper: (ChartData data, _) => data.text,
          startAngle: 90,
          endAngle: 90,
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
    ];
  }
}

class ChartData {
  ChartData({
    this.x,
    this.y,
    this.text,
  });

  final dynamic x;
  final dynamic y;
  final String? text;
}
