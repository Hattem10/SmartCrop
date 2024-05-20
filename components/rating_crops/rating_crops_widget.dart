import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rating_crops_model.dart';
export 'rating_crops_model.dart';

class RatingCropsWidget extends StatefulWidget {
  const RatingCropsWidget({super.key});

  @override
  State<RatingCropsWidget> createState() => _RatingCropsWidgetState();
}

class _RatingCropsWidgetState extends State<RatingCropsWidget> {
  late RatingCropsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingCropsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      onRatingUpdate: (newValue) =>
          setState(() => _model.ratingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: Color(0xFFFFD700),
      ),
      direction: Axis.horizontal,
      initialRating: _model.ratingBarValue ??= 0.0,
      unratedColor: FlutterFlowTheme.of(context).secondaryBackground,
      itemCount: 5,
      itemSize: 18.0,
      glowColor: Color(0xFFFFD700),
    );
  }
}
