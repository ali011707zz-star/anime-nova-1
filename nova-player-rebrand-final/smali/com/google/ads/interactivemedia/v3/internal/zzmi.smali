.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzmi;
.super Lcom/google/ads/interactivemedia/v3/internal/zzks;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzmj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.signalsdk.ISignalSdkCallback"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzks;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zzd(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzc(I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 5
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkt;->zzd(Landroid/os/Parcel;)V

    .line 6
    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzb(Landroid/os/Bundle;)V

    :goto_0
    return p3
.end method
