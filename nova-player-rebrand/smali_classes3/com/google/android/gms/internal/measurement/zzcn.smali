.class public final Lcom/google/android/gms/internal/measurement/zzcn;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-measurement-impl@@23.0.0"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    return-void
.end method
