.class public Lmiui/util/ExtraLocalePicker;
.super Ljava/lang/Object;
.source "ExtraLocalePicker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .registers 2
    .parameter "localeInfos"

    .prologue
    .line 7
    const-string v0, "en_US"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 8
    const-string/jumbo v0, "zh_TW"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "zh_CN"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method private static moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V
    .registers 7
    .parameter "localeInfos"
    .parameter "firstLocaleCode"

    .prologue
    .line 13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_16

    .line 14
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    .local v3, localeCode:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 16
    if-nez v0, :cond_17

    .line 27
    .end local v3           #localeCode:Ljava/lang/String;
    :cond_16
    :goto_16
    return-void

    .line 19
    .restart local v3       #localeCode:Ljava/lang/String;
    :cond_17
    aget-object v2, p0, v0

    .line 20
    .local v2, locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    move v1, v0

    .local v1, j:I
    :goto_1a
    if-lez v1, :cond_25

    .line 21
    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 23
    :cond_25
    const/4 v4, 0x0

    aput-object v2, p0, v4

    goto :goto_16

    .line 13
    .end local v1           #j:I
    .end local v2           #locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
