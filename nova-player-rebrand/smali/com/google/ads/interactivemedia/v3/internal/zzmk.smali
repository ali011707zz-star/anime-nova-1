.class public final Lcom/google/ads/interactivemedia/v3/internal/zzmk;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkr;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzmm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.signalsdk.ISignalSdkService"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkr;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Landroid/os/Bundle;Lcom/google/ads/interactivemedia/v3/internal/zzmj;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzkr;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkr;->zzw(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzf(Lcom/google/ads/interactivemedia/v3/internal/zzmn;Lcom/google/ads/interactivemedia/v3/internal/zzmh;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzkr;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkr;->zzw(ILandroid/os/Parcel;)V

    return-void
.end method
