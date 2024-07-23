![HybridListTile Header](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img0.png?raw=true)

# Hybrid List Tile

The Widget consists of **4 parts**:

   - The first part is common and independent of the type of **HybridListTile** desired, which is for configuration.
   - The second part is the **leading** of the Tile.
   - The third part is the content of the Tile, which includes title, subtitle...
   - And the **last** part is the **icon** of the Tile.

## COMMON CONFIGURATION INDEPENDENT FOR EACH TILE

All ListTiles share a series of common characteristics, meaning that whatever HybridListTile we need, they all share certain common features, which are:

   - **PADDING**: *`paddingTileTop`, `paddingTileBottom`, `paddingTileLeft`, and `paddingTileRight`*
   - **BORDER COLOR**: *`borderTileColor`*, if null it will be transparent
   - **BORDER RADIUS**: *`borderTileRadius`*, if null its value will be 0 and the Tile will not be rounded
   - **BACKGROUND COLOR**: *`tileBackgroundColor`*, if null its value will be Colors.grey[300]
   - **SPLASH COLOR**: *`splashTileColor`*, if null its value will be Colors.grey[400]
## CONFIGURING THE LEADING

### LEADING WITH LETTERS, ONE TITLE LINED, OVERTITLE

**TileWithOneLinedLeading**: Leading with a single-line text (DO NOT PASS FALSE to **needsTitleTwoLined**, JUST ADD THE TEXT using **leadingText**: `'AA'`) and border (**isOutlined**: `true`). You can specify the desired text color (**leadingTextColor**: `Styles.whiteColor`) and border color (**outlinedColor**: `Styles.whiteColor`).

![Img1](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img1.png?raw=true)

```bash
  const HybridListTile(
        paddingTileTop: 20,
        paddingTileBottom: 20,
        paddingTileLeft: 16,
        paddingTileRight: 16,
        tileBackgroundColor: Colors.blue,
        borderTileColor: Colors.black,
        leadingText: 'AA',
        leadingTextColor: Styles.whiteColor,
        isOutlined: true,
        outlinedColor: Styles.whiteColor,
        overTitleLeft: 'Over tittle Bold without ellipsis',
        overTitleLeftColor: Styles.whiteColor,
        overTitleLeftBold: true,
        overTitleRight: 'Over title right needs overflow',
        overTitleRightColor: Colors.white,
        overTitleRightOverflow: TextOverflow.ellipsis,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        needsTitleTwoLined: true,
        titleColor: Styles.whiteColor,
        titleOverFlow: TextOverflow.ellipsis,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        subtitleColor: Styles.whiteColor,
        underSubtitleLeft: 'Under subtitle left',
        underSubtitleLeftColor: Styles.whiteColor,
        underSubtitleRight: 'Under subtitle right',
        underSubtitleRightColor: Styles.whiteColor,
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 30,
        trailingIconColor: Styles.whiteColor)
```

### LEADING WITH LETTERS, TWO TITLE AND SUBTITLE LINED, OVERTITLE
**TileWithTwoLinedLeadingText**: Leading with a double-line text (**isLeadingTwoLined**: `true`) and border (**isOutlined**: `true`). You can specify the desired text color (**leadingTextColor**: `Styles.secondaryColor`) and border color (**outlinedColor**: `Styles.secondaryColor`).

![Img2](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img2.png?raw=true)


```bash
  const HybridListTile(
        paddingTileBottom: 30,
        leadingText: 'AA',
        leadingTextColor: Styles.secondaryColor,
        tileBackgroundColor: Colors.grey,
        isOutlined: true,
        isLeadingTwoLined: true,
        leadingTextLineTwo: 'PP',
        outlinedColor: Styles.secondaryColor,
        borderTileRadius: 80.0,
        overTitleLeft: 'Over tittle Bold wit ellipsis when right overflow whitout over title right',
        overTitleLeftOverflow: TextOverflow.ellipsis,
        overTitleLeftColor: Styles.whiteColor,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        subtitleOverFlow: TextOverflow.ellipsis,
        underSubtitleLeft: 'Under subtitle left',
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 18,
        trailingIconColor: Styles.secondaryColor)
```

### LEADING WITH ICON, TILE ROUNDED BORDERS
**TileWithBorderedIconLeading**: Leading with an icon (**isLeadingIcon**: `true`) and border (**isOutlined**: `true`). You can specify the icon (**leadingIcon**: `Icons.tv`) and desired colors (**leadingIconColor**: `Styles.secondaryColor`), as well as the icon border color (**outlinedColor**: `Styles.primaryColor`).

![Img3](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img3.png?raw=true)


```bash
  HybridListTile(
        paddingTileLeft: 20,
        paddingTileBottom: 10,
        isLeadingIcon: true,
        leadingIcon: Icons.tv,
        leadingIconColor: Styles.secondaryColor,
        isOutlined: true,
        outlinedColor: Styles.primaryColor,
        borderTileColor: Colors.black,
        borderTileRadius: 16.0,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        subtitleOverFlow: TextOverflow.fade,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        underSubtitleLeft: 'Under subtitle left',
        underSubtitleLeftColor: Styles.blackColor,
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 25,
        trailingIconColor: Styles.secondaryColor)
```

### LEADING WITH ICON, WITHOUT BORDER
**TileWithColoredIconBackground**: Similar to the previous one but with a background color for the **leading** icon (**leadingIconBackgroundColor**: `Styles.secondaryColor`).


![Img4](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img4.png?raw=true)


```bash
  HybridListTile(
        paddingTileRight: 35,
        isLeadingIcon: true,
        leadingIcon: Icons.tv,
        leadingIconColor: Colors.purple,
        leadingIconBackgroundColor: Styles.secondaryColor,
        leadingColor: Styles.secondaryColor,
        borderTileColor: Colors.red,
        borderTileRadius: 100.0,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        titleOverFlow: TextOverflow.ellipsis,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        subtitleOverFlow: TextOverflow.ellipsis,
        subtitleColor: Colors.purple,
        underSubtitleLeft: 'Under subtitle left',
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 50,
        trailingIconColor: Styles.secondaryColor)
```

### DIFERENT CONFIGURATION FOR LAST

**TileWithColoredAndBorderedIcon**: Similar to the previous ones but with a background (**leadingIconBackgroundColor**: `Styles.secondaryColor`) and borders of the desired color (**coloredBackgoundOutlineColor**: `Styles.primaryColor`).

![Img5](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img5.png?raw=true)


```bash
  HybridListTile(
        paddingTileTop: 30,
        paddingTileLeft: 35,
        paddingTileRight: 65,
        isLeadingIcon: true,
        leadingIcon: Icons.tv,
        tileBackgroundColor: Colors.amber,
        leadingIconColor: Styles.primaryColor,
        leadingIconBackgroundColor: Styles.secondaryColor,
        leadingColor: Styles.secondaryColor,
        coloredBackgoundOutlineColor: Styles.primaryColor,
        borderTileColor: Colors.green,
        splashTileColor: Colors.red,
        borderTileRadius: 5.0,
        title: 'Title by default is two lined but you can specify an overflow to make it one lined',
        titleOverFlow: TextOverflow.ellipsis,
        subtitleOverFlow: TextOverflow.ellipsis,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        needsSubtitleTwoLined: true,
        underSubtitleLeft: 'Under subtitle left',
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 10,
        trailingIconColor: Styles.whiteColor)
```

### LEADING NETWORK IMAGE WITH ERROR ICON, LEADING BORDER
**TileWithNetworkImageLeading**: It can display an image sourced from a REST endpoint as a String with a URL (**imagefromNetwork**). It uses a NetworkImage and uses a CircularProgressIndicator while loading the image, and if there is an error, it displays the error icon.

![Img6](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img6.png?raw=true)

![Img7](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img7.png?raw=true)


```bash
  HybridListTile(
        paddingTileTop: 16,
        paddingTileBottom: 16,
        paddingTileLeft: 16,
        paddingTileRight: 16,
        imagefromNetwork:
            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        tileBackgroundColor: Colors.lightGreen,
        borderTileColor: Colors.black,
        borderTileRadius: 25.0,
        splashTileColor: Colors.yellow,
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 30,
        trailingIconColor: Colors.cyanAccent,
        overTitleLeft: 'Over title Bold ellispsis',
        overTitleLeftColor: Colors.indigo,
        overTitleLeftBold: true,
        overTitleLeftOverflow: TextOverflow.ellipsis,
        overTitleRight: 'Over right Right bold',
        overTitleRightBold: true,
        overTitleRightColor: Colors.yellow,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        needsTitleTwoLined: true,
        titleColor: Colors.teal,
        titleBold: true,
        titleOverFlow: TextOverflow.ellipsis,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        subtitleOverFlow: TextOverflow.ellipsis,
        subtitleBold: true,
        subtitleColor: Styles.whiteColor,
        underSubtitleLeft: 'Under subtitle left bold',
        underSubtitleLeftColor: Colors.blueAccent,
        underSubtitleLeftBold: true,
        underSubtitleRight: 'Under subtitle right bold',
        underSubtitleRightColor: Colors.black,
        underSubtitleRightBold: true)
```

It can be added **imagefromNetworkBorder**: `Colors.blue`, to border the imagenUrl

![Img8](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img8.png?raw=true)

### SAME BUT WITH ASSET IMAGE
**TileWithAssetImageLeading**: Similar to the previous one but with an image sourced from **assets/images/** (**imageLeadingFromAsset**: `'assets/images/Flutter.png'`).

![Img9](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img9.png?raw=true)


```bash
  HybridListTile(
        paddingTileTop: 16,
        paddingTileBottom: 16,
        paddingTileLeft: 16,
        paddingTileRight: 16,
        imageLeadingFromAsset: 'assets/images/Flutter.png',
        tileBackgroundColor: Colors.lime,
        borderTileColor: Colors.black,
        borderTileRadius: 25.0,
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 30,
        trailingIconColor: Colors.cyanAccent,
        overTitleLeft: 'Over title Bold ellispsis',
        overTitleLeftColor: Colors.indigo,
        overTitleLeftBold: true,
        overTitleLeftOverflow: TextOverflow.ellipsis,
        overTitleRight: 'Over right Right bold',
        overTitleRightBold: true,
        overTitleRightColor: Colors.yellow,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        needsTitleTwoLined: true,
        titleColor: Colors.teal,
        titleBold: true,
        titleOverFlow: TextOverflow.ellipsis,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        subtitleOverFlow: TextOverflow.ellipsis,
        subtitleBold: true,
        subtitleColor: Styles.whiteColor,
        underSubtitleLeft: 'Under subtitle left bold',
        underSubtitleLeftColor: Colors.blueAccent,
        underSubtitleLeftBold: true,
        underSubtitleRight: 'Under subtitle right bold',
        underSubtitleRightColor: Colors.black,
        underSubtitleRightBold: true)
```

It can be added **imageLeadingFromAssetBorder**: `Colors.black`, to border the asset

![Img10](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img10.png?raw=true)

### WITHOUT LEADING
**TileWithoutLeading**: It's also possible to create a HybridListTile without any kind of **leading**.

![Img11](https://github.com/pabsuapan/hybrid-storage/blob/main/flutter/images/hybrid-list-tile/HybridListTile_img11.png?raw=true)


```bash
  HybridListTile(
        paddingTileTop: 20,
        paddingTileBottom: 20,
        paddingTileLeft: 16,
        paddingTileRight: 16,
        tileBackgroundColor: Colors.blue,
        borderTileColor: Colors.black,
        outlinedColor: Styles.whiteColor,
        overTitleLeft: 'Over tit Bold',
        overTitleLeftColor: Styles.whiteColor,
        overTitleLeftBold: true,
        overTitleRight: 'Over right Right',
        overTitleRightColor: Colors.pink,
        title: 'Title by default is two lined but you can specify an title overflow to make it one lined',
        needsTitleTwoLined: true,
        titleColor: Styles.whiteColor,
        subtitle: 'Subtitle by default is two lined but you can specify an overflow to make it one lined',
        subtitleColor: Styles.whiteColor,
        underSubtitleLeft: 'Under subtitle left',
        underSubtitleLeftColor: Styles.whiteColor,
        underSubtitleRight: 'Under subtitle right',
        underSubtitleRightColor: Styles.whiteColor,
        trailingIcon: Icons.arrow_forward_ios,
        trailingIconSize: 30,
        trailingIconColor: Styles.whiteColor,
        splashTileColor: Colors.red,
        borderTileRadius: 5.0,
        subtitleOverFlow: TextOverflow.ellipsis,
        needsSubtitleTwoLined: true)
```


## Autor ✒️

* **Pablo Suárez Pantaleón** - *Flutter Developer* - [pablosuarez@rudo.es](pablosuarez@rudo.es)
---

With ❤️ by RudoApps Flutter Team 😊

![Rudo Apps](https://rudo.es/wp-content/uploads/logo-rudo.svg)