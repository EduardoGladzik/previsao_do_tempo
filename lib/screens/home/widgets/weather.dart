import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:previsao_do_tempo/model/forescast.dart';

class Weather extends StatelessWidget {
  final Forecast forecast;

  const Weather(
    this.forecast,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            this.forecast.dayOfWeek
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SvgPicture.asset(
              this.forecast.icon
            ),
          ),
          Text(
            "${this.forecast.temperature}"
          )
        ],
      ),
    );
  }
}