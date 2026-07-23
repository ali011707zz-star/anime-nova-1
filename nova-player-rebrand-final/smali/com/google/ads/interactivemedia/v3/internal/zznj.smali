.class final Lcom/google/ads/interactivemedia/v3/internal/zznj;
.super Lcom/google/ads/interactivemedia/v3/internal/zzng;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Z

.field private zzd:J

.field private zze:J

.field private zzf:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzng;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null clientVersion"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Z)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzb:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzc:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 0

    .line 0
    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    return-object p0
.end method

.method public final zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 0

    .line 0
    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzd:J

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 0

    .line 0
    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    return-object p0
.end method

.method public final zzg(J)Lcom/google/ads/interactivemedia/v3/internal/zzng;
    .locals 0

    .line 0
    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zze:J

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    return-object p0
.end method

.method public final zzh()Lcom/google/ads/interactivemedia/v3/internal/zznh;
    .locals 13

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zza:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zznk;

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzb:Z

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzc:Z

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzd:J

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zze:J

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/zznk;-><init>(Ljava/lang/String;ZZZJZJ[B)V

    return-object v2

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " clientVersion"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " shouldGetAdvertisingId"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " isGooglePlayServicesAvailable"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    const-string v1, " enableQuerySignalsTimeout"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    const-string v1, " querySignalsTimeoutMs"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_7

    const-string v1, " enableQuerySignalsCache"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznj;->zzf:B

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_8

    const-string v1, " querySignalsCacheTtlSeconds"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
