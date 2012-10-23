.class public final Lmiui/content/res/ThemeResourcesPackage;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 5
    .parameter "wrapped"
    .parameter "resources"
    .parameter "packageName"
    .parameter "metaData"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 51
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .registers 7
    .parameter "resources"
    .parameter "packageName"

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 24
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    check-cast v1, Lmiui/content/res/ThemeResourcesPackage;

    .line 26
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    :cond_17
    if-nez v1, :cond_45

    .line 27
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    .line 28
    :try_start_1c
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 29
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/content/res/ThemeResourcesPackage;

    move-object v1, v0

    .line 31
    :cond_34
    if-nez v1, :cond_44

    .line 32
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v1

    .line 33
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_44
    monitor-exit v3

    .line 37
    :cond_45
    return-object v1

    .line 35
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_46

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .registers 6
    .parameter "resources"
    .parameter "packageName"

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_14

    .line 43
    new-instance v2, Lmiui/content/res/ThemeResourcesPackage;

    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lmiui/content/res/ThemeResourcesPackage;-><init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 42
    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    .local v2, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    goto :goto_2

    .line 45
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "id"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, ret:Ljava/lang/CharSequence;
    if-nez v0, :cond_e

    .line 70
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    :cond_e
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .parameter "cookieType"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, ret:Ljava/io/InputStream;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_27

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lmiui/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    .line 80
    if-nez v0, :cond_26

    .line 81
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 93
    :cond_26
    :goto_26
    return-object v0

    .line 84
    :cond_27
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4c

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-miui-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lmiui/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    .line 86
    if-nez v0, :cond_26

    .line 87
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_26

    .line 91
    :cond_4c
    invoke-virtual {p0, p2, v3}, Lmiui/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_26
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .registers 4
    .parameter "id"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    .local v0, ret:Ljava/lang/Integer;
    if-nez v0, :cond_e

    .line 61
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    :cond_e
    return-object v0
.end method

.method public hasValues()Z
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/ThemeResourcesSystem;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method