.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    return-void
.end method

.method public setFixedSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    return-void
.end method

.method public setFormat(I)V
    .registers 2
    .parameter "format"

    .prologue
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 2
    .parameter "screenOn"

    .prologue
    return-void
.end method

.method public setSizeFromLayout()V
    .registers 1

    .prologue
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    return-void
.end method
