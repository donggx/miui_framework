.class Landroid/webkit/WebIconDatabaseClassic;
.super Landroid/webkit/WebIconDatabase;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabaseClassic$1;,
        Landroid/webkit/WebIconDatabaseClassic$EventHandler;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebIconDatabase"

.field private static sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;


# instance fields
.field private final mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase;-><init>()V

    new-instance v0, Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;-><init>(Landroid/webkit/WebIconDatabaseClassic$1;)V

    iput-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->nativeClose()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->nativeRemoveAllIcons()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/webkit/WebIconDatabaseClassic;
    .registers 1

    .prologue
    sget-object v0, Landroid/webkit/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;

    if-nez v0, :cond_b

    new-instance v0, Landroid/webkit/WebIconDatabaseClassic;

    invoke-direct {v0}, Landroid/webkit/WebIconDatabaseClassic;-><init>()V

    sput-object v0, Landroid/webkit/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;

    :cond_b
    sget-object v0, Landroid/webkit/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;

    return-object v0
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeOpen(Ljava/lang/String;)V
.end method

.method private static native nativeReleaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveAllIcons()V
.end method

.method private static native nativeRetainIconForPageUrl(Ljava/lang/String;)V
.end method


# virtual methods
.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 8
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    if-nez p3, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->hasHandler()Z
    invoke-static {v2}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$1000(Landroid/webkit/WebIconDatabaseClassic$EventHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "contentResolver"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "where"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listener"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public close()V
    .registers 4

    .prologue
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    return-void
.end method

.method createHandler()V
    .registers 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->createHandler()V
    invoke-static {v0}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$1100(Landroid/webkit/WebIconDatabaseClassic$EventHandler;)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    if-eqz p1, :cond_1f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, db:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    iget-object v1, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    .end local v0           #db:Ljava/io/File;
    :cond_1f
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    if-eqz p1, :cond_d

    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    :cond_d
    return-void
.end method

.method public removeAllIcons()V
    .registers 4

    .prologue
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 6
    .parameter "url"
    .parameter "listener"

    .prologue
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_4
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    if-eqz p1, :cond_d

    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    :cond_d
    return-void
.end method
