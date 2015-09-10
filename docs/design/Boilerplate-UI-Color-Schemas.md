# How to add color schemas to boilerplate UI

The Boilerplate currently ships with Light and Dark color schemes, which  can be toggled in a configuration setting. However we want to  add custom color schemes, and create a new ones based on the Apinf Design Book.

In order to do this we need to hook into the [AdminLTE](https://github.com/almasaeed2010/AdminLTE)/[dist](https://github.com/almasaeed2010/AdminLTE/tree/master/dist)/[css/skins/](https://github.com/almasaeed2010/AdminLTE/tree/master/dist/css)

Examples of skins can be found in the documentation of the original project[ ](https://almsaeedstudio.com/themes/AdminLTE/documentation/index.html#advice)[](https://almsaeedstudio.com/themes/AdminLTE/documentation/index.html#advice)https://almsaeedstudio.com/themes/AdminLTE/documentation/index.html#advice

The file that overrides the styles used in the navbar in our project is client/style/baseimport.less

The styles can be overridden by calling .navbar and .navbar-static-top !important