.class public final Lcom/google/ads/interactivemedia/v3/internal/zzbu;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbu;->zza:Z

    return v0
.end method

.method final zzb(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdd;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbu;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbu;->zza:Z

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzb(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcc;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcf;->zzd(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcy;->zza(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zza(Landroid/content/Context;)V

    .line 6
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdc;->zza(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzci;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzci;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzci;->zzc(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcb;->zzc(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzb(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
