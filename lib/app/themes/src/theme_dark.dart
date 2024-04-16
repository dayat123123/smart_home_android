part of '../theme.dart';

ThemeData get darkTheme {
  return ThemeData(
      fontFamily: 'Inter',
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: AppColors.textDark),
        bodyLarge: TextStyle(color: AppColors.textDark),
        bodySmall: TextStyle(color: AppColors.textDark),
        labelMedium: TextStyle(color: AppColors.textDark),
        labelLarge: TextStyle(color: AppColors.textDark),
        labelSmall: TextStyle(color: AppColors.textDark),
        displayLarge: TextStyle(
            color: AppColors.textDark,
            fontSize: 16,
            fontWeight: FontWeight.w700),
        displayMedium: TextStyle(
          color: AppColors.textSoftDark,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: AppColors.textSoftDark,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      ),
      scaffoldBackgroundColor: AppColors.backgroundDark,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        onSurface: AppColors.white,
      ),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors.dark,
        ThemeTextStyles.dark,
        ThemePluto.dark,
      ],
      appBarTheme: AppBarTheme(
        color: AppColors.lightDark,
        iconTheme: const IconThemeData(color: AppColors.lightGrey),
        titleTextStyle: headline1.copyWith(
          color: AppColors.grey,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.backgroundDark,
        surfaceTintColor: AppColors.backgroundDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        titleTextStyle: headline1.copyWith(
          color: AppColors.darkestGrey,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        contentTextStyle: headline1.copyWith(
          color: AppColors.darkestGrey,
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: AppColors.lighterDark,
        textStyle: headline1.copyWith(
          color: AppColors.lighterGrey,
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            color: AppColors.white.withOpacity(0.4),
            fontWeight: FontWeight.w400),
        errorStyle: const TextStyle(
          fontSize: 11.0,
          color: Colors.redAccent,
        ),
        iconColor: AppColors.white,
        filled: true,
        fillColor: AppColors.foregroundDark,
        labelStyle: const TextStyle(color: AppColors.white),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide:
              const BorderSide(width: 0.5, color: AppColors.defaultBorderDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide:
              const BorderSide(width: 0.5, color: AppColors.defaultBorderDark),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide:
              BorderSide(width: 0.5, color: AppColors.grey.withOpacity(0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 0.5, color: AppColors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 1, color: Colors.redAccent),
        ),
      ),
      visualDensity: VisualDensity.compact,
      expansionTileTheme: const ExpansionTileThemeData(
        backgroundColor: AppColors.backgroundDarkest,
        textColor: AppColors.white,
        collapsedTextColor: AppColors.white,
        iconColor: AppColors.white,
      ),
      scrollbarTheme: ScrollbarThemeData(
          thickness: MaterialStateProperty.all(4),
          thumbColor:
              MaterialStateProperty.all(AppColors.primary.withOpacity(0.5)),
          radius: const Radius.circular(10),
          thumbVisibility: MaterialStateProperty.all(true),
          minThumbLength: 50),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.foregroundDark,
          foregroundColor: AppColors.white.withOpacity(0.8),
          elevation: 0,
          shadowColor: Colors.transparent,
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.primary, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        foregroundColor: AppColors.white.withOpacity(0.8),
        visualDensity: VisualDensity.compact,
        minimumSize: const Size(100, 40),
      )),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(visualDensity: VisualDensity.compact)),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: AppColors.backgroundDark,
        headerForegroundColor: AppColors.white,
        dayForegroundColor: const MaterialStatePropertyAll(AppColors.white),
        rangePickerHeaderForegroundColor: AppColors.white,
        todayForegroundColor: const MaterialStatePropertyAll(AppColors.white),
        yearForegroundColor: const MaterialStatePropertyAll(AppColors.white),
        dayOverlayColor:
            MaterialStatePropertyAll(AppColors.primary.withOpacity(0.5)),
        yearStyle: const TextStyle(color: AppColors.primary),
        yearOverlayColor:
            MaterialStatePropertyAll(AppColors.primary.withOpacity(0.5)),
        headerBackgroundColor: AppColors.primary,
        surfaceTintColor: AppColors.backgroundDark,
        dividerColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        side: BorderSide(color: AppColors.white.withOpacity(0.1), width: 2),
      ),
      tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(4),
          ),
          textStyle: const TextStyle(color: AppColors.black, fontSize: 11),
          verticalOffset: 10),
      dividerColor: AppColors.defaultBorderDark,
      dividerTheme: const DividerThemeData(
          color: AppColors.defaultBorderDark, thickness: 0.5, space: 1));
}
