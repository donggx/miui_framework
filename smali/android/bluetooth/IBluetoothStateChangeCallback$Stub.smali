.class public abstract Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothStateChangeCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothStateChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothStateChangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothStateChangeCallback"

.field static final TRANSACTION_onBluetoothStateChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothStateChangeCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;
    .registers 3
    .parameter "obj"

    .prologue
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v1, "android.bluetooth.IBluetoothStateChangeCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    goto :goto_3

    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_24

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v2, "android.bluetooth.IBluetoothStateChangeCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v2, "android.bluetooth.IBluetoothStateChangeCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    move v0, v1

    .local v0, _arg0:Z
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->onBluetoothStateChange(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .end local v0           #_arg0:Z
    :cond_22
    const/4 v0, 0x0

    goto :goto_1b

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
