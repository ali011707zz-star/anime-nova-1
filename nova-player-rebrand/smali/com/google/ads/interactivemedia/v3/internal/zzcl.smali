.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzce;


# static fields
.field private static zza:Lcom/google/ads/interactivemedia/v3/internal/zzcl;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzbz;

.field private zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcd;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzca;Lcom/google/ads/interactivemedia/v3/internal/zzbw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzb:F

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzcl;
    .locals 3

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzbw;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbw;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzca;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzca;-><init>()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzca;Lcom/google/ads/interactivemedia/v3/internal/zzbw;)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzbv;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbv;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzbz;

    .line 2
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzbz;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzcl;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzbz;

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcc;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzce;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcc;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zze()V

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzdn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzc()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzbz;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zza()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzdn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzc()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzdn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zze()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzdn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdn;->zzd()V

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcc;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zzf()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzbz;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzb()V

    return-void
.end method

.method public final zzf(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzb:F

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzf()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzct;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzo(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzg()F
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzb:F

    return v0
.end method
