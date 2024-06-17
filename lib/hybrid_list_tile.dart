import 'package:flutter/material.dart';

import 'styles/styles.dart';

/// Library to create different ListTiles With customized parameters
///
/// [author] Pablo Suárez
/// [module] HybridListTile
/// [version] 1.0.1
class HybridListTile extends StatefulWidget {
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

  /// UDER SUBTITLE
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

      /// UDER SUBTITLE
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
  State<HybridListTile> createState() => _HybridListTileState();
}

class _HybridListTileState extends State<HybridListTile> {
  @override
  Widget build(BuildContext context) {
    return _customListTile();
  }

  /// Builds and returns a custom list tile widget with the specified padding, shape, background color, and onPressed callback.
  ///
  /// The custom list tile is built using the provided `widget` object, which contains the following properties:
  /// - `splashTileColor`: The color of the splash effect when the tile is pressed. If not provided, the default color is `Colors.grey[300]`.
  /// - `tileBackgroundColor`: The background color of the tile. If not provided, the default color is `Colors.grey[400]`.
  /// - `onPressed`: The callback function to be executed when the tile is pressed.
  ///
  /// The tile's shape is determined by the `_shape` variable, which is a `RoundedRectangleBorder` with a radius of 10.0.
  ///
  /// The tile's child is another custom tile widget, which is built using the `_customTile` method
  Widget _customListTile() {
    return Padding(
        padding: _padding,
        child: MaterialButton(
            splashColor: widget.splashTileColor ?? Colors.grey[300],

            /// SHAPE
            shape: _shape,

            /// TILE BACKGROUND
            color: widget.tileBackgroundColor ?? Colors.grey[400],

            /// ONPRESSED
            onPressed: () {
              if (widget.onPressed != null) widget.onPressed!();
            },
            child: _customTile()));
  }

  /// PADDING
  EdgeInsets get _padding => EdgeInsets.only(
      top: widget.paddingTileTop ?? 0,
      bottom: widget.paddingTileBottom ?? 0,
      left: widget.paddingTileLeft ?? 0,
      right: widget.paddingTileRight ?? 0);

  /// BORDER && RADIUS
  RoundedRectangleBorder get _shape => RoundedRectangleBorder(
      side: BorderSide(color: widget.borderTileColor ?? Colors.transparent),
      borderRadius:
          BorderRadius.all(Radius.circular(widget.borderTileRadius ?? 0)));

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
  Widget _customTile() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(children: [
            /// LEADING
            _customTileLeading(),

            /// TILE CONTENT
            _customTileContent(),

            /// TRAILING ICON
            _customTileTrailing()
          ]))
    ]);
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
    return widget.imagefromNetwork != null
        ? _roudedLeadingNetworkImage()
        : widget.imageLeadingFromAsset != null
            ? _roudedLeadingFromAsset()
            : widget.leadingText != null
                ? Container(
                    width: 50,
                    height: 50,
                    decoration: widget.isOutlined != null
                        ? _needsOutlinedCircle()
                        : _coloredCircle(),
                    child: widget.isLeadingTwoLined != null
                        ? _needsTwoLinedTextInCircle()
                        : widget.isLeadingIcon != null
                            ? _needsIconCirclePainted()
                            : _textOneLinedCircle())
                : widget.isLeadingIcon != null
                    ? _needsIconCirclePainted()
                    : Container();
  }

  /// Returns a `CircleAvatar` widget with a circular shape and a background color
  /// specified by `widget.imagefromNetworkBorder`. The child of the `CircleAvatar`
  /// is an `Image.network` widget with the image specified by `widget.imagefromNetwork`.
  /// The image is displayed with a width and height of 50 pixels and a `BoxFit.cover` fit.
  /// If the image is still loading, a `CircularProgressIndicator` is displayed in the center.
  /// If there is an error loading the image, an `Icon` widget with an error icon is displayed.
  /// The color of the error icon is specified by `widget.imagefromNetworkErrorColor` and the icon is `Icons.error` by default.
  /// The color of the progress indicator is specified by `widget.imagefromNetworkCircularProgressColor` and is white by default.
  /// The radius of the `CircleAvatar` is 30 pixels.
  /// The background color of the `CircleAvatar` is specified by `widget.imagefromNetworkBorder` and is red by default.
  /// The `ClipOval` widget is used to ensure that the image is displayed as a circle.
  Widget _roudedLeadingNetworkImage() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: widget.imagefromNetworkBorder ?? Colors.red,
      child: ClipOval(
        child: Image.network(
          widget.imagefromNetwork!,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: widget.imagefromNetworkCircularProgressColor ??
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
            return Icon(widget.imagefromNetworkErrorIcon ?? Icons.error,
                size: 40,
                color: widget.imagefromNetworkErrorColor ?? Colors.white);
          },
        ),
      ),
    );
  }

  /// Returns a `CircleAvatar` widget with a circular shape and a background color
  /// specified by `widget.imageLeadingFromAssetBorder`. The child of the `CircleAvatar`
  /// is another `CircleAvatar` with a radius of 28.0 if `widget.imageLeadingFromAssetBorder`
  /// is not null, otherwise it has a radius of 30.0. The background image of the child
  /// `CircleAvatar` is obtained from the asset specified by `widget.imageLeadingFromAsset`.
  Widget _roudedLeadingFromAsset() {
    return CircleAvatar(
        radius: 30.0,
        backgroundColor:
            widget.imageLeadingFromAssetBorder ?? Colors.yellowAccent,
        child: CircleAvatar(
            radius: widget.imageLeadingFromAssetBorder != null ? 28.0 : 30.0,
            backgroundImage: AssetImage(widget.imageLeadingFromAsset!)));
  }

  /// Returns a `Container` widget that displays an icon inside a circle decoration.
  ///
  /// The circle decoration is determined by the `isOutlined` property of the widget.
  /// If `isOutlined` is not null, the circle is outlined with a border. Otherwise, the circle is colored.
  ///
  /// The icon displayed is determined by the `leadingIcon` property of the widget.
  /// The color of the icon is determined by the `leadingIconColor` property of the widget.
  ///
  /// Returns a `Container` widget with a width and height of 50 pixels, containing an icon.
  Widget _needsIconCirclePainted() {
    return Container(
        width: 50,
        height: 50,
        decoration: widget.isOutlined != null
            ? _needsOutlinedCircle()
            : _coloredCircle(),
        child: Icon(widget.leadingIcon!, color: widget.leadingIconColor));
  }

  /// Returns a `BoxDecoration` with a circular border and an optional outlined color.
  ///
  /// The `borderRadius` is set to `BorderRadius.circular(100)` to create a circle.
  /// The `border` is set to `Border.all` with a width of `1.6` and an optional outlined color.
  /// If `widget.outlinedColor` is not null, it is used as the border color. Otherwise, `Styles.primaryColor` is used.
  BoxDecoration _needsOutlinedCircle() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
            width: 1.6,
            color: widget.outlinedColor != null
                ? widget.outlinedColor!
                : Styles.primaryColor));
  }

  /// Returns a `BoxDecoration` with a circular shape, a specified `leadingColor`, and an optional `coloredBackgoundOutlineColor`.
  ///
  /// The `shape` property is set to `BoxShape.circle` to create a circle.
  /// The `color` property is set to the value of `widget.leadingColor`.
  /// The `border` property is set to a `Border.all` with a width of `1.6` and an optional `coloredBackgoundOutlineColor`.
  /// If `widget.coloredBackgoundOutlineColor` is not null, it is used as the border color. Otherwise, `null` is used.
  BoxDecoration _coloredCircle() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: widget.leadingColor,
      border: widget.coloredBackgoundOutlineColor != null
          ? Border.all(width: 1.6, color: widget.coloredBackgoundOutlineColor!)
          : null,
    );
  }

  /// Returns a `Widget` that displays two lines of text in a circular shape.
  ///
  /// The text is displayed in a `Column` with `mainAxisAlignment` set to `MainAxisAlignment.center`.
  /// The first line of text is displayed using a `Flexible` widget with `fit` set to `FlexFit.tight`.
  /// The second line of text is displayed using another `Flexible` widget with `fit` set to `FlexFit.tight`.
  /// The text is retrieved from `widget.leadingText` and `widget.leadingTextLineTwo`.
  /// The text style is set to `Styles.outlinedBall`.
  ///
  /// Returns a `Widget` object.
  Widget _needsTwoLinedTextInCircle() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
          fit: FlexFit.tight,
          child: Text(widget.leadingText ?? '', style: Styles.outlinedBall)),
      Flexible(
          fit: FlexFit.tight,
          child:
              Text(widget.leadingTextLineTwo ?? '', style: Styles.outlinedBall))
    ]);
  }

  /// Returns a `Widget` that displays a single line of text in a circular shape.
  ///
  /// The text is displayed in the center of the widget using the `Center` widget.
  /// The text is retrieved from `widget.leadingText`, and if it is null, an empty string is used instead.
  /// The text style is determined by the `widget.isOutlined` and `widget.leadingTextColor` properties.
  /// If `widget.isOutlined` is not null and `widget.leadingTextColor` is not null, the text style is set to `Styles.outlinedBall` with the specified color.
  /// Otherwise, the text style is set to `Styles.filledBall`.
  ///
  /// Returns a `Widget` object.
  Widget _textOneLinedCircle() {
    return Center(
        child: Text(widget.leadingText ?? '',
            style: widget.isOutlined != null && widget.leadingTextColor != null
                ? Styles.outlinedBall.copyWith(color: widget.leadingTextColor)
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
  Widget _customTileContent() {
    return Expanded(
      child: Column(
        children: [
          /// OVER TITLE
          _overTitle(),

          /// TITLE
          _title(),

          /// SUBTITLE
          _subtitle(),

          /// UNDER SUBTITLE
          _underSubtitle()
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
  /// The left part is wrapped in a `Visibility` widget that is only visible if `widget.overTitleLeft` is not null.
  /// The left part is wrapped in an `Expanded` widget to make it take up the remaining space.
  /// The left part is wrapped in a `Container` widget with the following properties:
  /// - `margin`: The left margin is set to 0 if `widget.leadingText`, `widget.underSubtitleLeft`, and `widget.underSubtitleRight` are all null.
  ///             Otherwise, the left margin is set to 10.
  /// - `bottom`: The bottom margin is always set to 0.
  /// - `right`: The right margin is set to 0 if `widget.overTitleRight` is null.
  ///            Otherwise, the right margin is set to 10.
  /// - `child`: The child of the `Container` widget is a `Text` widget with the following properties:
  ///   - `maxLines`: The maximum number of lines is set to 1.
  ///   - `overflow`: The overflow behavior is set to the value of `widget.overTitleLeftOverflow`.
  ///   - `text`: The text is set to the value of `widget.overTitleLeft` or an empty string if `widget.overTitleLeft` is null.
  ///   - `style`: The style of the text is determined by the following conditions:
  ///     - If `widget.overTitleLeftColor` is not null, the style is overridden with the following properties:
  ///       - `color`: The color is set to the value of `widget.overTitleLeftColor`.
  ///       - `fontWeight`: The font weight is set to bold if `widget.overTitleLeftBold` is not null, otherwise it is set to normal.
  ///     - Otherwise, the style is set to the value of `Styles.caption`.
  ///
  /// Returns a `Widget` object.
  Widget _overTitleLeft() {
    return Visibility(
        visible: widget.overTitleLeft != null,
        child: Expanded(
            child: Container(
                margin: EdgeInsets.only(
                    left: widget.leadingText == null &&
                            widget.underSubtitleLeft == null &&
                            widget.underSubtitleRight == null
                        ? 0
                        : 10,
                    bottom: 0,
                    right: widget.overTitleRight == null ? 0 : 10),
                child: Text(
                    maxLines: 1,
                    overflow: widget.overTitleLeftOverflow,
                    widget.overTitleLeft ?? '',
                    style: widget.overTitleLeftColor != null
                        ? Styles.caption.override(
                            color: widget.overTitleLeftColor,
                            fontWeight: widget.overTitleLeftBold != null
                                ? FontWeight.bold
                                : FontWeight.normal)
                        : Styles.caption))));
  }

  /// Returns a `Widget` that represents the right part of the over title of the custom tile.
  ///
  /// The right part is created by calling the `_overTitleRight()` method.
  ///
  /// The right part is wrapped in a `Visibility` widget that is only visible if `widget.overTitleRight` is not null.
  /// The right part is wrapped in an `Expanded` widget to make it take up the remaining space.
  /// The right part is wrapped in a `Container` widget with the following properties:
  /// - `margin`: The left margin is set to 0 if `widget.leadingText`, `widget.underSubtitleLeft`, and `widget.underSubtitleRight` are all null.
  ///             Otherwise, the left margin is set to 10.
  /// - `bottom`: The bottom margin is always set to 0.
  /// - `child`: The child of the `Container` widget is a `Text` widget with the following properties:
  ///   - `maxLines`: The maximum number of lines is set to 1.
  ///   - `overflow`: The overflow behavior is set to the value of `widget.overTitleRightOverflow`.
  ///   - `text`: The text is set to the value of `widget.overTitleRight` or an empty string if `widget.overTitleRight` is null.
  ///   - `style`: The style of the text is determined by the following conditions:
  ///     - If `widget.overTitleRightColor` is not null, the style is overridden with the following properties:
  ///       - `color`: The color is set to the value of `widget.overTitleRightColor`.
  ///       - `fontWeight`: The font weight is set to bold if `widget.overTitleRightBold` is not null, otherwise it is set to normal.
  ///     - Otherwise, the style is set to the value of `Styles.caption`.
  ///
  /// Returns a `Widget` object.
  Widget _overTitleRight() {
    return Visibility(
        visible: widget.overTitleRight != null,
        child: Expanded(
            child: Container(
                margin: EdgeInsets.only(
                    left: widget.leadingText == null &&
                            widget.underSubtitleLeft == null &&
                            widget.underSubtitleRight == null
                        ? 0
                        : 10,
                    bottom: 0),
                child: Text(
                    maxLines: 1,
                    overflow: widget.overTitleRightOverflow,
                    widget.overTitleRight ?? '',
                    style: widget.overTitleRightColor != null
                        ? Styles.caption.override(
                            color: widget.overTitleRightColor,
                            fontWeight: widget.overTitleRightBold != null
                                ? FontWeight.bold
                                : FontWeight.normal)
                        : Styles.caption))));
  }

  // Returns a widget that represents the title of the custom tile.
  // The title is displayed in a container with specified width and margin.
  // The text is determined by `widget.title` and styled based on `widget.titleColor` and `widget.titleBold`.
  // The text can have a maximum of 1 or 2 lines based on `widget.needsTitleTwoLined`.
  // The overflow behavior is determined by `widget.titleOverFlow`.
  Widget _title() {
    return Wrap(children: [
      Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
              left: widget.leadingText == null &&
                      widget.leadingIcon == null &&
                      widget.underSubtitleLeft == null &&
                      widget.underSubtitleRight == null
                  ? 0
                  : 10,
              top: widget.overTitleLeft == null && widget.overTitleRight == null
                  ? 0
                  : 5),
          child: Text(widget.title ?? '',
              overflow: widget.titleOverFlow,
              maxLines: widget.needsTitleTwoLined != null ? 2 : 1,
              style: widget.title != null
                  ? Styles.titleTile.override(
                      color: widget.titleColor,
                      fontWeight: widget.titleBold == true
                          ? FontWeight.bold
                          : FontWeight.normal)
                  : Styles.titleTile))
    ]);
  }

  // Returns a Widget representing the subtitle of the custom tile.
  // The visibility of the subtitle is determined by the value of widget.subtitle.
  // The subtitle is wrapped in a Wrap widget containing a Container with specific width and margin properties.
  // The text displayed is based on widget.subtitle with specified overflow, maxLines, and style properties.
  // Returns a Widget object.
  Widget _subtitle() {
    return Visibility(
        visible: widget.subtitle != null,
        child: Wrap(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  left: widget.leadingText == null &&
                          widget.leadingIcon == null &&
                          widget.underSubtitleLeft == null &&
                          widget.underSubtitleRight == null
                      ? 0
                      : 10,
                  top: 5),
              child: Text(widget.subtitle ?? '',
                  overflow: widget.subtitleOverFlow,
                  maxLines: widget.needsSubtitleTwoLined != null ? 2 : 1,
                  style: widget.subtitleColor != null
                      ? Styles.subtitleTile.override(
                          color: widget.subtitleColor,
                          fontWeight: widget.subtitleBold == true
                              ? FontWeight.bold
                              : FontWeight.normal)
                      : Styles.subtitleTile))
        ]));
  }

  /// Returns a widget that displays the under subtitle of the custom list tile.
  ///
  /// The visibility of the under subtitle is determined by the values of `widget.underSubtitleLeft`
  /// and `widget.underSubtitleRight`. If both values are null, the widget is not visible.
  ///
  /// The under subtitle is displayed in a row layout with maximum main axis size and
  /// the content is aligned to the start and end of the row.
  ///
  /// The under subtitle is composed of two child widgets: `_underSubtitleLeft()` and `_underSubtitleRight()`.
  ///
  /// Returns a `Widget` object.
  Widget _underSubtitle() {
    return Visibility(
        visible: widget.underSubtitleLeft == null &&
                widget.underSubtitleRight == null
            ? false
            : true,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_underSubtitleLeft(), _underSubtitleRight()]));
  }

  /// Returns a `Widget` that represents the left part of the under subtitle of the custom list tile.
  ///
  /// The left part is created by calling the `_underSubtitleLeft()` method.
  ///
  /// The left part is wrapped in an `Expanded` widget to make it take up the remaining space.
  /// The left part is wrapped in a `Container` widget with the following properties:
  /// - `width`: The width of the container is set to half of the width of the screen.
  /// - `margin`: The left margin is set to 0 if `widget.isLeadingIcon` is not null and `widget.imagefromNetwork` is not null.
  ///             Otherwise, the left margin is set to 10. The top margin is always set to 5. The right margin is always set to 10.
  /// - `child`: The child of the `Container` widget is a `Text` widget with the following properties:
  ///   - `maxLines`: The maximum number of lines is set to 1.
  ///   - `overflow`: The overflow behavior is set to the value of `widget.underSubtitleLeftOverflow`.
  ///   - `text`: The text is set to the value of `widget.underSubtitleLeft` or an empty string if `widget.underSubtitleLeft` is null.
  ///   - `style`: The style of the text is determined by the following conditions:
  ///     - If `widget.underSubtitleLeftColor` is not null, the style is overridden with the following properties:
  ///       - `color`: The color is set to the value of `widget.underSubtitleLeftColor`.
  ///       - `fontWeight`: The font weight is set to bold if `widget.underSubtitleLeftBold` is not null, otherwise it is set to normal.
  ///     - Otherwise, the style is set to the value of `Styles.customListTileUnderSubtitleLeftColor(widget.underSubtitleLeftColor, widget.underSubtitleLeftBold)`.
  ///
  /// Returns a `Widget` object.
  Widget _underSubtitleLeft() {
    return Expanded(
        child: Container(
            width: MediaQuery.of(context).size.width / 2,
            margin: EdgeInsets.only(
                left: widget.isLeadingIcon != null &&
                        widget.imagefromNetwork != null
                    ? 0
                    : 10,
                top: 5,
                right: 10),
            child: Text(widget.underSubtitleLeft ?? '',
                maxLines: 1,
                overflow: widget.underSubtitleLeftOverflow,
                style: Styles.customListTileUnderSubtitleLeftColor(
                    widget.underSubtitleLeftColor,
                    widget.underSubtitleLeftBold))));
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
  ///     - `overflow`: The overflow is set to the value of `widget.underSubtitleRightOverflow`.
  ///     - `text`: The text is set to the value of `widget.underSubtitleRight` or an empty string if `widget.underSubtitleRight` is null.
  ///     - `style`: The style of the text is determined by the following conditions:
  ///       - If both `widget.underSubtitleRightColor` and `widget.underSubtitleRightBold` are not null, the style is overridden with the following properties:
  ///         - `color`: The color is set to the value of `widget.underSubtitleRightColor`.
  ///         - `fontWeight`: The font weight is set to bold if `widget.underSubtitleRightBold` is not null, otherwise it is set to normal.
  ///       - Otherwise, the style is set to the value of `Styles.caption`.
  ///
  /// Returns a `Widget` object.
  Widget _underSubtitleRight() {
    return Expanded(
        child: Container(
            width: MediaQuery.of(context).size.width / 2,
            margin: const EdgeInsets.only(right: 10, top: 5),
            alignment: Alignment.centerRight,
            child: Text(
                maxLines: 1,
                overflow: widget.underSubtitleRightOverflow,
                widget.underSubtitleRight ?? '',
                style: widget.underSubtitleRightColor != null &&
                        widget.underSubtitleRightBold != null
                    ? Styles.customListTileUnderSubtitleRightColor(
                        widget.underSubtitleRightColor!,
                        widget.underSubtitleRightBold!)
                    : Styles.caption)));
  }

  /// Returns a trailing widget for the custom tile.
  ///
  /// The trailing widget is a `Padding` widget with a left padding of 8.0.
  /// Inside the `Padding` widget, there is an `Icon` widget with the following properties:
  /// - `icon`: The icon is determined by the `widget.trailingIcon` property.
  /// - `size`: The size of the icon is determined by the `widget.trailingIconSize` property, or `Styles.fontSizeH6` if `widget.trailingIconSize` is null.
  /// - `color`: The color of the icon is determined by the `widget.trailingIconColor` property, or `Styles.primaryColor` if `widget.trailingIconColor` is null.
  ///
  /// Returns a `Widget` object.
  Widget _customTileTrailing() {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(widget.trailingIcon,
            size: widget.trailingIconSize ?? Styles.fontSizeH6,
            color: widget.trailingIconColor ?? Styles.primaryColor));
  }
}
