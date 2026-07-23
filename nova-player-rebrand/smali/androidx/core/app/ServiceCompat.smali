.class public abstract Landroidx/core/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ServiceCompat$Api34Impl;,
        Landroidx/core/app/ServiceCompat$Api29Impl;
    }
.end annotation


# direct methods
.method public static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 2

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 172
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ServiceCompat$Api34Impl;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 174
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ServiceCompat$Api29Impl;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
