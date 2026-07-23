.class public abstract Lcom/google/android/gms/internal/ads/zzbpj;
.super Lcom/google/android/gms/internal/ads/zzbct;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.h5.client.IH5AdsManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbct;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzdd(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpk;->zzf()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpk;->zze(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
