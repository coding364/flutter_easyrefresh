part of easyrefresh;

/// Material footer.
class MaterialFooter extends Footer {
  final Key? key;

  /// See [ProgressIndicator.backgroundColor].
  final Color? backgroundColor;

  /// See [ProgressIndicator.color].
  final Color? color;

  /// See [ProgressIndicator.valueColor].
  final Animation<Color?>? valueColor;

  /// See [ProgressIndicator.semanticsLabel].
  final String? semanticsLabel;

  /// See [ProgressIndicator.semanticsLabel].
  final String? semanticsValue;

  /// Icon when [IndicatorResult.noMore].
  final Widget? noMoreIcon;

  /// Show bezier background.
  final bool showBezierBackground;

  /// Bezier background color.
  /// See [BezierBackground.color].
  final Color? bezierBackgroundColor;

  /// Bezier background animation.
  /// See [BezierBackground.useAnimation].
  final bool bezierBackgroundAnimation;

  /// Bezier background bounce.
  /// See [BezierBackground.bounce].
  final bool bezierBackgroundBounce;

  MaterialFooter({
    this.key,
    double triggerOffset = 100,
    bool clamping = true,
    IndicatorPosition position = IndicatorPosition.above,
    Duration processedDuration = const Duration(milliseconds: 200),
    SpringDescription? spring,
    SpringBuilder? readySpringBuilder,
    bool springRebound = false,
    FrictionFactor? frictionFactor,
    bool safeArea = true,
    double? infiniteOffset,
    bool? hitOver,
    bool? infiniteHitOver,
    bool hapticFeedback = false,
    this.backgroundColor,
    this.color,
    this.valueColor,
    this.semanticsLabel,
    this.semanticsValue,
    this.noMoreIcon,
    this.showBezierBackground = false,
    this.bezierBackgroundColor,
    this.bezierBackgroundAnimation = false,
    this.bezierBackgroundBounce = false,
  }) : super(
          triggerOffset: triggerOffset,
          clamping: clamping,
          processedDuration: processedDuration,
          spring: spring,
          readySpringBuilder: readySpringBuilder ??
              (bezierBackgroundAnimation
                  ? kBezierSpringBuilder
                  : kMaterialSpringBuilder),
          springRebound: springRebound,
          frictionFactor: frictionFactor ??
              (showBezierBackground
                  ? kBezierFrictionFactor
                  : kMaterialFrictionFactor),
          safeArea: safeArea,
          infiniteOffset: infiniteOffset,
          hitOver: hitOver,
          infiniteHitOver: infiniteHitOver,
          position: position,
          hapticFeedback: hapticFeedback,
        );

  @override
  Widget build(BuildContext context, IndicatorState state) {
    return _MaterialIndicator(
      key: key,
      state: state,
      disappearDuration: processedDuration,
      reverse: !state.reverse,
      backgroundColor: backgroundColor,
      color: color,
      valueColor: valueColor,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      noMoreIcon: noMoreIcon,
      showBezierBackground: showBezierBackground,
      bezierBackgroundColor: bezierBackgroundColor,
      bezierBackgroundAnimation: bezierBackgroundAnimation,
      bezierBackgroundBounce: bezierBackgroundBounce,
    );
  }
}
