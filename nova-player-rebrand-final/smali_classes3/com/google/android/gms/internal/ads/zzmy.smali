.class public final Lcom/google/android/gms/internal/ads/zzmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:J

.field public final zzb:Lcom/google/android/gms/internal/ads/zzbf;

.field public final zzc:I

.field public final zzd:Lcom/google/android/gms/internal/ads/zzwk;

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzbf;

.field public final zzg:I

.field public final zzh:Lcom/google/android/gms/internal/ads/zzwk;

.field public final zzi:J

.field public final zzj:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzbf;ILcom/google/android/gms/internal/ads/zzwk;JLcom/google/android/gms/internal/ads/zzbf;ILcom/google/android/gms/internal/ads/zzwk;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmy;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzmy;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzg:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzh:Lcom/google/android/gms/internal/ads/zzwk;

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzi:J

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzj:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzmy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmy;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmy;->zza:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmy;->zze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzg:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzi:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzj:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    .line 2
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    .line 4
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzh:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzh:Lcom/google/android/gms/internal/ads/zzwk;

    .line 5
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmy;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmy;->zze:J

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzg:I

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzh:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzi:J

    .line 5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzj:J

    .line 6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    .line 7
    invoke-static {v10}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
