.class public abstract Lcom/google/android/gms/internal/ads/zzcae;
.super Landroid/content/ContextWrapper;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method
