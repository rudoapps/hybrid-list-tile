import 'package:flutter/material.dart';

import 'styles/styles.dart';

/// Library to create different ListTiles With customized parameters
///
/// **DEPRECATION NOTICE:**
/// This API will be completely redesigned in version 2.0.0 with a modern,
/// config-based architecture. The current parameter-based API will be replaced
/// with a more maintainable and type-safe configuration system.
///
/// The 1.x versions will continue to be supported for existing projects,
/// but we recommend planning for migration to the new API when 2.0.0 is released.
///
/// [author] Pablo Suárez
/// [module] HybridListTile
/// [version] 1.1.0
@Deprecated(
  'This API will be redesigned in version 2.0.0. '
  'The 1.x versions will remain available, but plan for migration. '
  'See README.md for more information.'
)
class HybridListTile extends StatelessWidget {
  /// COMMON CUSTOMLISTTILES PROPERTIES
  ///
  /// PADDING
  final double? paddingTileTop;
  final double? paddingTileBottom;
  final double? paddingTileLeft;
  final double? paddingTileRight;

  /// BACKGROUND COLOR
  final Color? tileBackgroundColor;

  /// SPLASH COLOR
  final Color? splashTileColor;

  /// BORDER COLOR
  final Color? borderTileColor;

  /// BORDER RADIUS
  final double? borderTileRadius;

  /// OUTLINED
  final bool? isOutlined;
  final Color? outlinedColor;

  /// COLOR OUTLINED WHEN BACKGROUND IS FILLED
  final Color? coloredBackgoundOutlineColor;

  /// TWO LINED LEADING
  final bool? isLeadingTwoLined;

  /// LEADING ICON
  final bool? isLeadingIcon;
  final IconData? leadingIcon;
  final Color? leadingIconColor;

  /// LEADING ICON BACKGROUND
  final Color? leadingIconBackgroundColor;

  /// LEADING TEXT
  final String? leadingText;
  final Color? leadingTextColor;
  final String? leadingTextLineTwo;

  /// LEADING COLOR
  final Color? leadingColor;

  /// LEADING FROM NETWORK
  final String? imagefromNetwork;
  final Color? imagefromNetworkBorder;
  final Color? imagefromNetworkCircularProgressColor;
  final IconData? imagefromNetworkErrorIcon;
  final Color? imagefromNetworkErrorColor;

  /// LEADING FROM IMAGE ASSETS
  final String? imageLeadingFromAsset;
  final Color? imageLeadingFromAssetBorder;

  /// OVER TITLE
  final String? overTitleLeft;
  final Color? overTitleLeftColor;
  final bool? overTitleLeftBold;
  final TextOverflow? overTitleLeftOverflow;
  final String? overTitleRight;
  final Color? overTitleRightColor;
  final bool? overTitleRightBold;
  final TextOverflow? overTitleRightOverflow;

  /// TITLE
  final String? title;
  final Color? titleColor;
  final bool? titleBold;
  final bool? needsTitleTwoLined;
  final TextOverflow? titleOverFlow;

  /// SUBTITLE
  final String? subtitle;
  final Color? subtitleColor;
  final bool? subtitleBold;
  final bool? needsSubtitleTwoLined;
  final TextOverflow? subtitleOverFlow;

  /// UNDER SUBTITLE
  final String? underSubtitleLeft;
  final Color? underSubtitleLeftColor;
  final bool? underSubtitleLeftBold;
  final TextOverflow? underSubtitleLeftOverflow;
  final String? underSubtitleRight;
  final Color? underSubtitleRightColor;
  final bool? underSubtitleRightBold;
  final TextOverflow? underSubtitleRightOverflow;

  /// TRAILING ICON
  final IconData? trailingIcon;
  final double? trailingIconSize;
  final Color? trailingIconColor;

  /// ON PRESSED FUNCTION
  final Function? onPressed;

  /// CONTRUCTOR
  const HybridListTile(
      {super.key,

      /// COMMON CUSTOMLISTTILES PROPERTIES
      ///
      /// PADDING
      this.paddingTileTop,
      this.paddingTileBottom,
      this.paddingTileLeft,
      this.paddingTileRight,

      /// BACKGROUND COLOR
      this.tileBackgroundColor,

      /// SPLASH COLOR
      this.splashTileColor,

      /// BORDER COLOR
      this.borderTileColor,

      /// BORDER RADIUS
      this.borderTileRadius,

      /// OUTLINED
      this.isOutlined,
      this.outlinedColor,

      /// COLOR OUTLINED WHEN BACKGROUND IS FILLED
      this.coloredBackgoundOutlineColor,

      /// TWO LINED LEADING
      this.isLeadingTwoLined,

      /// LEADING ICON
      this.isLeadingIcon,
      this.leadingIcon,
      this.leadingIconColor,

      /// LEADING ICON BACKGROUND
      this.leadingIconBackgroundColor,

      /// LEADING TEXT
      this.leadingText,
      this.leadingTextColor,
      this.leadingTextLineTwo,

      /// LEADING COLOR
      this.leadingColor,

      /// LEADING IMAGE FROM NETWORK
      this.imagefromNetwork,
      this.imagefromNetworkBorder,
      this.imagefromNetworkCircularProgressColor,
      this.imagefromNetworkErrorIcon,
      this.imagefromNetworkErrorColor,

      /// LEADING FROM IMAGE ASSETS
      this.imageLeadingFromAsset,
      this.imageLeadingFromAssetBorder,

      /// OVER TITLE
      this.overTitleLeft,
      this.overTitleLeftColor,
      this.overTitleLeftBold,
      this.overTitleLeftOverflow,
      this.overTitleRight,
      this.overTitleRightColor,
      this.overTitleRightBold,
      this.overTitleRightOverflow,

      /// TITLE
      this.title,
      this.titleColor,
      this.titleBold,
      this.needsTitleTwoLined,
      this.titleOverFlow,

      /// SUBTITLE
      this.subtitle,
      this.subtitleColor,
      this.subtitleBold,
      this.needsSubtitleTwoLined,
      this.subtitleOverFlow,

      /// UNDER SUBTITLE
      this.underSubtitleLeft,
      this.underSubtitleLeftColor,
      this.underSubtitleLeftBold,
      this.underSubtitleLeftOverflow,
      this.underSubtitleRight,
      this.underSubtitleRightColor,
      this.underSubtitleRightBold,
      this.underSubtitleRightOverflow,

      /// TRAILING ICON
      this.trailingIcon,
      this.trailingIconSize,
      this.trailingIconColor,

      /// ON PRESSED FUNCTION
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return _customListTile(context);
  }

  /// Builds and returns a custom list tile widget with the specified padding, shape, background color, and onPressed callback.
  ///
  /// The custom list tile is built using the following properties:
  /// - `splashTileColor`: The color of the splash effect when the tile is pressed. If not provided, the default color is `Colors.grey[300]`.
  /// - `tileBackgroundColor`: The background color of the tile. If not provided, the default color is `Colors.grey[400]`.
  /// - `onPressed`: The callback function to be executed when the tile is pressed.
  ///
  /// The tile's shape is determined by the `_shape` variable, which is a `RoundedRectangleBorder` with a radius of 10.0.
  ///
  /// The tile's child is another custom tile widget, which is built using the `_customTile` method
  Widget _customListTile(BuildContext context) {
    return Padding(
        padding: _padding,
        child: MaterialButton(
            splashColor: splashTileColor ?? Colors.grey[300],

            /// SHAPE
            shape: _shape,

            /// TILE BACKGROUND
            color: tileBackgroundColor ?? Colors.grey[400],

            /// ONPRESSED
            onPressed: () {
              if (onPressed != null) onPressed!();
            },
            child: _customTile(context)));
  }

  /// PADDING
  EdgeInsets get _padding => EdgeInsets.only(
      top: paddingTileTop ?? 0,
      bottom: paddingTileBottom ?? 0,
      left: paddingTileLeft ?? 0,
      right: paddingTileRight ?? 0);

  /// BORDER && RADIUS
  RoundedRectangleBorder get _shape => RoundedRectangleBorder(
      side: BorderSide(color: borderTileColor ?? Colors.transparent),
      borderRadius:
          BorderRadius.all(Radius.circular(borderTileRadius ?? 0)));

  /// Returns a custom tile widget that consists of a column with a single container child.
  /// The container child contains a row with three children: the leading widget, the tile content widget, and the trailing icon widget.
  ///
  /// The leading widget is determined based on the `_customTileLeading()` method.
  /// The tile content widget is determined based on the `_customTileContent()` method.
  /// The trailing icon widget is determined based on the `_customTileTrailing()` method.
  ///
  /// The container child has a width equal to the width of the current context's media query size.
  /// The container child has a padding of 16.0 pixels on the top and bottom.
  ///
  /// Returns a `Widget` object.
  Widget _customTile(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Row(children: [
                  /// LEADING
                  _customTileLeading(),

                  /// TILE CONTENT
                  _customTileContent(constraints.maxWidth),

                  /// TRAILING ICON
                  _customTileTrailing()
                ]),
              ))
        ]);
      },
    );
  }

  /// Returns the leading widget for the custom tile.
  ///
  /// The leading widget is determined based on the following conditions:
  /// - If `imagefromNetwork` is not null, returns a rounded leading image from a network source.
  /// - If `imageLeadingFromAsset` is not null, returns a rounded leading image from an asset.
  /// - If `leadingText` is not null, returns a container with a width and height of 50 pixels,
  ///   with a circle decoration determined by `isOutlined`, and a child widget determined by
  ///   `isLeadingTwoLined`, `isLeadingIcon`, and `_textOneLinedCircle`.
  /// - If `isLeadingIcon` is not null, returns a container with a width and height of 50 pixels,
  ///   with a circle decoration determined by `isOutlined`, and a child widget of an icon.
  /// - Otherwise, returns an empty container.
  ///
  /// Returns a `Widget` object.
  Widget _customTileLeading() {
    return imagefromNetwork != null
        ? _roudedLeadingNetworkImage()
        : imageLeadingFromAsset != null
            ? _roudedLeadingFromAsset()
            : leadingText != null
                ? Container(
                    width: 50,
                    height: 50,
                    decoration: isOutlined != null
                        ? _needsOutlinedCircle()
                        : _coloredCircle(),
                    child: isLeadingTwoLined != null
                        ? _needsTwoLinedTextInCircle()
                        : isLeadingIcon != null
                            ? _needsIconCirclePainted()
                            : _textOneLinedCircle())
                : isLeadingIcon != null
                    ? _needsIconCirclePainted()
                    : Container();
  }

  /// Returns a `CircleAvatar` widget with a circular shape and a background color
  /// specified by `imagefromNetworkBorder`. The child of the `CircleAvatar`
  /// is an `Image.network` widget with the image specified by `imagefromNetwork`.
  /// The image is displayed with a width and height of 50 pixels and a `BoxFit.cover` fit.
  /// If the image is still loading, a `CircularProgressIndicator` is displayed in the center.
  /// If there is an error loading the image, an `Icon` widget with an error icon is displayed.
  /// The color of the error icon is specified by `imagefromNetworkErrorColor` and the icon is `Icons.error` by default.
  /// The color of the progress indicator is specified by `imagefromNetworkCircularProgressColor` and is white by default.
  /// The radius of the `CircleAvatar` is 30 pixels.
  /// The background color of the `CircleAvatar` is specified by `imagefromNetworkBorder` and is red by default.
  /// The `ClipOval` widget is used to ensure that the image is displayed as a circle.
  Widget _roudedLeadingNetworkImage() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: imagefromNetworkBorder ?? Colors.red,
      child: ClipOval(
        child: Image.network(
          imagefromNetwork!,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: imagefromNetworkCircularProgressColor ??
                      Colors.white,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              );
            }
          },
          errorBuilder: (context, error, stackTrace) {
            return Icon(imagefromNetworkErrorIcon ?? Icons.error,
                size: 40,
                color: imagefromNetworkErrorColor ?? Colors.white);
          },
        ),
      ),
    );
  }

  /// Returns a `CircleAvatar` widget with a circular shape and a background color
  /// specified by `imageLeadingFromAssetBorder`. The child of the `CircleAvatar`
  /// is another `CircleAvatar` with a radius of 28.0 if `imageLeadingFromAssetBorder`
  /// is not null, otherwise it has a radius of 30.0. The background image of the child
  /// `CircleAvatar` is obtained from the asset specified by `imageLeadingFromAsset`.
  Widget _roudedLeadingFromAsset() {
    return CircleAvatar(
        radius: 30.0,
        backgroundColor:
            imageLeadingFromAssetBorder ?? Colors.yellowAccent,
        child: CircleAvatar(
            radius: imageLeadingFromAssetBorder != null ? 28.0 : 30.0,
            backgroundImage: AssetImage(imageLeadingFromAsset!)));
  }

  /// Returns a `Container` widget that displays an icon inside a circle decoration.
  ///
  /// The circle decoration is determined by the `isOutlined` property of the 
  /// If `isOutlined` is not null, the circle is outlined with a border. Otherwise, the circle is colored.
  ///
  /// The icon displayed is determined by the `leadingIcon` property of the 
  /// The color of the icon is determined by the `leadingIconColor` property of the 
  ///
  /// Returns a `Container` widget with a width and height of 50 pixels, containing an icon.
  Widget _needsIconCirclePainted() {
    return Container(
        width: 50,
        height: 50,
        decoration: isOutlined != null
            ? _needsOutlinedCircle()
            : _coloredCircle(),
        child: Icon(leadingIcon!, color: leadingIconColor));
  }

  /// Returns a `BoxDecoration` with a circular border and an optional outlined color.
  ///
  /// The `borderRadius` is set to `BorderRadius.circular(100)` to create a circle.
  /// The `border` is set to `Border.all` with a width of `1.6` and an optional outlined color.
  /// If `outlinedColor` is not null, it is used as the border color. Otherwise, `Styles.primaryColor` is used.
  BoxDecoration _needsOutlinedCircle() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
            width: 1.6,
            color: outlinedColor != null
                ? outlinedColor!
                : Styles.primaryColor));
  }

  /// Returns a `BoxDecoration` with a circular shape, a specified `leadingColor`, and an optional `coloredBackgoundOutlineColor`.
  ///
  /// The `shape` property is set to `BoxShape.circle` to create a circle.
  /// The `color` property is set to the value of `leadingColor`.
  /// The `border` property is set to a `Border.all` with a width of `1.6` and an optional `coloredBackgoundOutlineColor`.
  /// If `coloredBackgoundOutlineColor` is not null, it is used as the border color. Otherwise, `null` is used.
  BoxDecoration _coloredCircle() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: leadingColor,
      border: coloredBackgoundOutlineColor != null
          ? Border.all(width: 1.6, color: coloredBackgoundOutlineColor!)
          : null,
    );
  }

  /// Returns a `Widget` that displays two lines of text in a circular shape.
  ///
  /// The text is displayed in a `Column` with `mainAxisAlignment` set to `MainAxisAlignment.center`.
  /// The first line of text is displayed using a `Flexible` widget with `fit` set to `FlexFit.tight`.
  /// The second line of text is displayed using another `Flexible` widget with `fit` set to `FlexFit.tight`.
  /// The text is retrieved from `leadingText` and `leadingTextLineTwo`.
  /// The text style is set to `Styles.outlinedBall`.
  ///
  /// Returns a `Widget` object.
  Widget _needsTwoLinedTextInCircle() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
          fit: FlexFit.tight,
          child: Text(leadingText ?? '', style: Styles.outlinedBall)),
      Flexible(
          fit: FlexFit.tight,
          child:
              Text(leadingTextLineTwo ?? '', style: Styles.outlinedBall))
    ]);
  }

  /// Returns a `Widget` that displays a single line of text in a circular shape.
  ///
  /// The text is displayed in the center of the widget using the `Center` 
  /// The text is retrieved from `leadingText`, and if it is null, an empty string is used instead.
  /// The text style is determined by the `isOutlined` and `leadingTextColor` properties.
  /// If `isOutlined` is not null and `leadingTextColor` is not null, the text style is set to `Styles.outlinedBall` with the specified color.
  /// Otherwise, the text style is set to `Styles.filledBall`.
  ///
  /// Returns a `Widget` object.
  Widget _textOneLinedCircle() {
    return Center(
        child: Text(leadingText ?? '',
            style: isOutlined != null && leadingTextColor != null
                ? Styles.outlinedBall.copyWith(color: leadingTextColor)
                : Styles.filledBall));
  }

  /// Returns a `Widget` that represents the content of a custom tile.
  ///
  /// The content consists of an `Expanded` widget that contains a `Column` widget with four children:
  /// - `_overTitle()`: A widget that represents the over title of the custom tile.
  /// - `_title()`: A widget that represents the title of the custom tile.
  /// - `_subtitle()`: A widget that represents the subtitle of the custom tile.
  /// - `_underSubtitle()`: A widget that represents the under subtitle of the custom tile.
  ///
  /// Returns a `Widget` object.
  Widget _customTileContent(double availableWidth) {
    return Expanded(
      child: Column(
        children: [
          /// OVER TITLE
          _overTitle(),

          /// TITLE
          _title(availableWidth),

          /// SUBTITLE
          _subtitle(availableWidth),

          /// UNDER SUBTITLE
          _underSubtitle(availableWidth)
        ],
      ),
    );
  }

  /// Returns a `Widget` that represents the over title of the custom tile.
  ///
  /// The over title consists of two parts: the left part and the right part.
  /// The left part is created by calling the `_overTitleLeft()` method,
  /// and the right part is created by calling the `_overTitleRight()` method.
  ///
  /// The row is aligned to the left and right using the `mainAxisAlignment` property.
  ///
  /// Returns a `Widget` object.
  Widget _overTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// OVER TITLE ROW LEFT
        _overTitleLeft(),

        /// OVER TITLE ROW RIGHT
        _overTitleRight()
      ],
    );
  }

  /// Returns a `Widget` that represents the left part of the over title of the custom tile.
  ///
  /// The left part is created by calling the `_overTitleLeft()` method.
  ///
  /// The left part is wrapped in a `Visibility` widget that is only visible if `overTitleLeft` is not null.
  /// The left part is wrapped in an `Expanded` widget to make it take up the remaining space.
  /// The left part is wrapped in a `Container` widget with the following properties:
  /// - `margin`: The left margin is set to 0 if `leadingText`, `underSubtitleLeft`, and `underSubtitleRight` are all null.
  ///             Otherwise, the left margin is set to 10.
  /// - `bottom`: The bottom margin is always set to 0.
  /// - `right`: The right margin is set to 0 if `overTitleRight` is null.
  ///            Otherwise, the right margin is set to 10.
  /// - `child`: The child of the `Container` widget is a `Text` widget with the following properties:
  ///   - `maxLines`: The maximum number of lines is set to 1.
  ///   - `overflow`: The overflow behavior is set to the value of `overTitleLeftOverflow`.
  ///   - `text`: The text is set to the value of `overTitleLeft` or an empty string if `overTitleLeft` is null.
  ///   - `style`: The style of the text is determined by the following conditions:
  ///     - If `overTitleLeftColor` is not null, the style is overridden with the following properties:
  ///       - `color`: The color is set to the value of `overTitleLeftColor`.
  ///       - `fontWeight`: The font weight is set to bold if `overTitleLeftBold` is not null, otherwise it is set to normal.
  ///     - Otherwise, the style is set to the value of `Styles.caption`.
  ///
  /// Returns a `Widget` object.
  Widget _overTitleLeft() {
    return Visibility(
        visible: overTitleLeft != null,
        child: Expanded(
            child: Container(
                margin: EdgeInsets.only(
                    left: leadingText == null &&
                            underSubtitleLeft == null &&
                            underSubtitleRight == null
                        ? 0
                        : 10,
                    bottom: 0,
                    right: overTitleRight == null ? 0 : 10),
                child: Text(
                    maxLines: 1,
                    overflow: overTitleLeftOverflow,
                    overTitleLeft ?? '',
                    style: overTitleLeftColor != null
                        ? Styles.caption.override(
                            color: overTitleLeftColor,
                            fontWeight: overTitleLeftBold != null
                                ? FontWeight.bold
                                : FontWeight.normal)
                        : Styles.caption))));
  }

  /// Returns a `Widget` that represents the right part of the over title of the custom tile.
  ///
  /// The right part is created by calling the `_overTitleRight()` method.
  ///
  /// The right part is wrapped in a `Visibility` widget that is only visible if `overTitleRight` is not null.
  /// The right part is wrapped in an `Expanded` widget to make it take up the remaining space.
  /// The right part is wrapped in a `Container` widget with the following properties:
  /// - `margin`: The left margin is set to 0 if `leadingText`, `underSubtitleLeft`, and `underSubtitleRight` are all null.
  ///             Otherwise, the left margin is set to 10.
  /// - `bottom`: The bottom margin is always set to 0.
  /// - `child`: The child of the `Container` widget is a `Text` widget with the following properties:
  ///   - `maxLines`: The maximum number of lines is set to 1.
  ///   - `overflow`: The overflow behavior is set to the value of `overTitleRightOverflow`.
  ///   - `text`: The text is set to the value of `overTitleRight` or an empty string if `overTitleRight` is null.
  ///   - `style`: The style of the text is determined by the following conditions:
  ///     - If `overTitleRightColor` is not null, the style is overridden with the following properties:
  ///       - `color`: The color is set to the value of `overTitleRightColor`.
  ///       - `fontWeight`: The font weight is set to bold if `overTitleRightBold` is not null, otherwise it is set to normal.
  ///     - Otherwise, the style is set to the value of `Styles.caption`.
  ///
  /// Returns a `Widget` object.
  Widget _overTitleRight() {
    return Visibility(
        visible: overTitleRight != null,
        child: Expanded(
            child: Container(
                margin: EdgeInsets.only(
                    left: leadingText == null &&
                            underSubtitleLeft == null &&
                            underSubtitleRight == null
                        ? 0
                        : 10,
                    bottom: 0),
                child: Text(
                    maxLines: 1,
                    overflow: overTitleRightOverflow,
                    overTitleRight ?? '',
                    style: overTitleRightColor != null
                        ? Styles.caption.override(
                            color: overTitleRightColor,
                            fontWeight: overTitleRightBold != null
                                ? FontWeight.bold
                                : FontWeight.normal)
                        : Styles.caption))));
  }

  // Returns a widget that represents the title of the custom tile.
  // The title is displayed in a container with specified width and margin.
  // The text is determined by `title` and styled based on `titleColor` and `titleBold`.
  // The text can have a maximum of 1 or 2 lines based on `needsTitleTwoLined`.
  // The overflow behavior is determined by `titleOverFlow`.
  Widget _title(double availableWidth) {
    return Wrap(children: [
      Container(
          width: availableWidth,
          margin: EdgeInsets.only(
              left: leadingText == null &&
                      leadingIcon == null &&
                      underSubtitleLeft == null &&
                      underSubtitleRight == null
                  ? 0
                  : 10,
              top: overTitleLeft == null && overTitleRight == null
                  ? 0
                  : 5),
          child: Text(title ?? '',
              overflow: titleOverFlow,
              maxLines: needsTitleTwoLined != null ? 2 : 1,
              style: title != null
                  ? Styles.titleTile.override(
                      color: titleColor,
                      fontWeight: titleBold == true
                          ? FontWeight.bold
                          : FontWeight.normal)
                  : Styles.titleTile))
    ]);
  }

  // Returns a Widget representing the subtitle of the custom tile.
  // The visibility of the subtitle is determined by the value of subtitle.
  // The subtitle is wrapped in a Wrap widget containing a Container with specific width and margin properties.
  // The text displayed is based on subtitle with specified overflow, maxLines, and style properties.
  // Returns a Widget object.
  Widget _subtitle(double availableWidth) {
    return Visibility(
        visible: subtitle != null,
        child: Wrap(children: [
          Container(
              width: availableWidth,
              margin: EdgeInsets.only(
                  left: leadingText == null &&
                          leadingIcon == null &&
                          underSubtitleLeft == null &&
                          underSubtitleRight == null
                      ? 0
                      : 10,
                  top: 5),
              child: Text(subtitle ?? '',
                  overflow: subtitleOverFlow,
                  maxLines: needsSubtitleTwoLined != null ? 2 : 1,
                  style: subtitleColor != null
                      ? Styles.subtitleTile.override(
                          color: subtitleColor,
                          fontWeight: subtitleBold == true
                              ? FontWeight.bold
                              : FontWeight.normal)
                      : Styles.subtitleTile))
        ]));
  }

  /// Returns a widget that displays the under subtitle of the custom list tile.
  ///
  /// The visibility of the under subtitle is determined by the values of `underSubtitleLeft`
  /// and `underSubtitleRight`. If both values are null, the widget is not visible.
  ///
  /// The under subtitle is displayed in a row layout with maximum main axis size and
  /// the content is aligned to the start and end of the row.
  ///
  /// The under subtitle is composed of two child widgets: `_underSubtitleLeft()` and `_underSubtitleRight()`.
  ///
  /// Returns a `Widget` object.
  Widget _underSubtitle(double availableWidth) {
    return Visibility(
        visible: underSubtitleLeft == null &&
                underSubtitleRight == null
            ? false
            : true,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_underSubtitleLeft(availableWidth), _underSubtitleRight(availableWidth)]));
  }

  /// Returns a `Widget` that represents the left part of the under subtitle of the custom list tile.
  ///
  /// The left part is created by calling the `_underSubtitleLeft()` method.
  ///
  /// The left part is wrapped in an `Expanded` widget to make it take up the remaining space.
  /// The left part is wrapped in a `Container` widget with the following properties:
  /// - `width`: The width of the container is set to half of the width of the screen.
  /// - `margin`: The left margin is set to 0 if `isLeadingIcon` is not null and `imagefromNetwork` is not null.
  ///             Otherwise, the left margin is set to 10. The top margin is always set to 5. The right margin is always set to 10.
  /// - `child`: The child of the `Container` widget is a `Text` widget with the following properties:
  ///   - `maxLines`: The maximum number of lines is set to 1.
  ///   - `overflow`: The overflow behavior is set to the value of `underSubtitleLeftOverflow`.
  ///   - `text`: The text is set to the value of `underSubtitleLeft` or an empty string if `underSubtitleLeft` is null.
  ///   - `style`: The style of the text is determined by the following conditions:
  ///     - If `underSubtitleLeftColor` is not null, the style is overridden with the following properties:
  ///       - `color`: The color is set to the value of `underSubtitleLeftColor`.
  ///       - `fontWeight`: The font weight is set to bold if `underSubtitleLeftBold` is not null, otherwise it is set to normal.
  ///     - Otherwise, the style is set to the value of `Styles.customListTileUnderSubtitleLeftColor(underSubtitleLeftColor, underSubtitleLeftBold)`.
  ///
  /// Returns a `Widget` object.
  Widget _underSubtitleLeft(double availableWidth) {
    return Expanded(
        child: Container(
            width: availableWidth / 2,
            margin: EdgeInsets.only(
                left: isLeadingIcon != null &&
                        imagefromNetwork != null
                    ? 0
                    : 10,
                top: 5,
                right: 10),
            child: Text(underSubtitleLeft ?? '',
                maxLines: 1,
                overflow: underSubtitleLeftOverflow,
                style: Styles.customListTileUnderSubtitleLeftColor(
                    underSubtitleLeftColor,
                    underSubtitleLeftBold))));
  }

  /// Returns a `Widget` object that represents the under subtitle right part of the custom list tile.
  ///
  /// The returned widget is an `Expanded` widget with the following properties:
  /// - `child`: A `Container` widget with the following properties:
  ///   - `width`: The width is set to half of the width of the current context's media query size.
  ///   - `margin`: The margin is set to `EdgeInsets.only(right: 10, top: 5)`.
  ///   - `alignment`: The alignment is set to `Alignment.centerRight`.
  ///   - `child`: A `Text` widget with the following properties:
  ///     - `maxLines`: The maximum number of lines is set to 1.
  ///     - `overflow`: The overflow is set to the value of `underSubtitleRightOverflow`.
  ///     - `text`: The text is set to the value of `underSubtitleRight` or an empty string if `underSubtitleRight` is null.
  ///     - `style`: The style of the text is determined by the following conditions:
  ///       - If both `underSubtitleRightColor` and `underSubtitleRightBold` are not null, the style is overridden with the following properties:
  ///         - `color`: The color is set to the value of `underSubtitleRightColor`.
  ///         - `fontWeight`: The font weight is set to bold if `underSubtitleRightBold` is not null, otherwise it is set to normal.
  ///       - Otherwise, the style is set to the value of `Styles.caption`.
  ///
  /// Returns a `Widget` object.
  Widget _underSubtitleRight(double availableWidth) {
    return Expanded(
        child: Container(
            width: availableWidth / 2,
            margin: const EdgeInsets.only(right: 10, top: 5),
            alignment: Alignment.centerRight,
            child: Text(
                maxLines: 1,
                overflow: underSubtitleRightOverflow,
                underSubtitleRight ?? '',
                style: underSubtitleRightColor != null &&
                        underSubtitleRightBold != null
                    ? Styles.customListTileUnderSubtitleRightColor(
                        underSubtitleRightColor!,
                        underSubtitleRightBold!)
                    : Styles.caption)));
  }

  /// Returns a trailing widget for the custom tile.
  ///
  /// The trailing widget is a `Padding` widget with a left padding of 8.0.
  /// Inside the `Padding` widget, there is an `Icon` widget with the following properties:
  /// - `icon`: The icon is determined by the `trailingIcon` property.
  /// - `size`: The size of the icon is determined by the `trailingIconSize` property, or `Styles.fontSizeH6` if `trailingIconSize` is null.
  /// - `color`: The color of the icon is determined by the `trailingIconColor` property, or `Styles.primaryColor` if `trailingIconColor` is null.
  ///
  /// Returns a `Widget` object.
  Widget _customTileTrailing() {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(trailingIcon,
            size: trailingIconSize ?? Styles.fontSizeH6,
            color: trailingIconColor ?? Styles.primaryColor));
  }
}
