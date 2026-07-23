.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzml;
.super Lcom/google/ads/interactivemedia/v3/internal/zzks;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzmm;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/ads/interactivemedia/v3/internal/zzmm;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.ads.signalsdk.ISignalSdkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzmm;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzmm;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzmk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzmk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
