.class public final Lcom/google/android/gms/internal/ads/zzfrd;
.super Lcom/google/android/gms/ads/internal/client/zzcj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfrj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfqw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrj;Lcom/google/android/gms/internal/ads/zzfqw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfrj;->zza(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;->zzb(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcaz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcaz;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;->zzd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbex;

    move-result-object p1

    return-object p1
.end method

.method public final zzj(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;->zzf(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbtt;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzm(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfqw;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Z

    move-result p1

    return p1
.end method

.method public final zzn(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqw;->zzb(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zze(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    return-object p1
.end method

.method public final zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbex;

    move-result-object p1

    return-object p1
.end method

.method public final zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcaz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcaz;

    move-result-object p1

    return-object p1
.end method

.method public final zzr(ILjava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzft;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqw;->zzf(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzft;

    move-result-object p1

    return-object p1
.end method

.method public final zzs(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzh(I)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzft;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v1

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzt(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqw;->zzg(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zzu(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqw;->zzi(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzv(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzj(I)V

    return-void
.end method
