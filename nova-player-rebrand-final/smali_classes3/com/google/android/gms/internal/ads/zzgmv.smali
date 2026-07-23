.class final Lcom/google/android/gms/internal/ads/zzgmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgoe;

.field private final zzc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzgoe;Lcom/google/android/gms/internal/ads/zzgao;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zza:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdu;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zzg()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzc()Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zza:Lcom/google/android/gms/internal/ads/zzika;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3b01

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcp;->zzc()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzc:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3b02

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    :cond_3
    return v0

    .line 1
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3b00

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgdu;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zzg()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzc()Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zza:Lcom/google/android/gms/internal/ads/zzika;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3aff

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmv;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3afe

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v0
.end method
